@def title = "Remote Computing - High Performance Computing - Usage"
@def hascode = true

@def tags = ["Remote Computing", "High Performance Computing", "Usage"]
# Usage
\toc

## Overview

The idea of HPC Systems is to be used as much as possible, usually by a lot of different people or programs. 
In order to make sure that users and programs do not interfere with each other the nodes can not be accessed directly. 
The actual execution of programs is done by a job scheduler. 
We need to define a job, with all the resources we need and hand this job over to the job scheduler. 
The job scheduler will now make sure that all constraints are met and schedule our job along with all the other jobs.

While there is a lot of work going into making the access and use of such systems easier, more convenient, more interactive and maybe even provide some graphical user interface, the standard mode of access is still via terminal[^1]. 

Via `ssh` we usually reach one of the login nodes and from here we get access to the job scheduler.
We can prepare our job script, maybe compile some sources, sort out data and when everything is finished submit our job to the queue (and wait). 

There are different job schedulers around, the most commonly found is [Slurm](https://www.schedmd.com/). 
The _workload manager_ itself is [open source](https://github.com/SchedMD/slurm), the company SchedMD® 
> distributes and maintains the canonical version of Slurm as well as providing Slurm support, development, training, installation, and configuration[^2].

## Test setup
If you look through this notes at home or at another time you can still use a test setup. 
E.g. use the excellent [docker-compose](https://docs.docker.com/compose/) setup of [Giocanni Torres](https://github.com/giovtorres), that you can find on [github](https://github.com/giovtorres/slurm-docker-cluster).

In order to have (almost) the same setup as for the live session, please clone the fork (`ulg` branch).
```bash
git clone --depth 1 --branch ulg git@github.com:kandolfp/slurm-docker-cluster.git
```
This will add `Julia` and the `Environment Modules` (we see later what that is).

At the time of creation of these notes the following sequence of commands will start a cluster and give you access to the nodes. 
```bash
SLURM_TAG=slurm-21-08-6-1 IMAGE_TAG=21.08.06.1 docker-compose build
SLURM_TAG=slurm-21-08-6-1 IMAGE_TAG=21.08.06.1 docker-compose up -d
docker exec -it slurmctld bash
```

For the live session of this class we created a virtual HPC with 6 nodes. 
How this was done is described further in the [cloud section](../../cloud/setup_vhpc/). 

@@important
How to get access to the live setup is not in the notes.
@@

## Slurm - as a job scheduler

The inner workings of Slurm can be found in the [documentation](https://slurm.schedmd.com/),
we discuss some of the most important commands[^3]
- `sbatch` is used so submit a job script 
- `srun` is used to submit a job for execution in real time
- `scancel` is used to cancel a pending or running job (or job step)
- `squeue` reports the state of jobs or job steps
- `sacct` is used to report job or job step accounting information about active or completed jobs
- `scontrol` is the administrative tool used to view and/or modify jobs or the Slurm state

Let us dive right in and submit our first job and from there we extend our job to be more refined.

\note{
    The next part is designed as a type along section. 
    We also ask some questions in between to keep your focus, the [answers](#answers_to_the_questions) are at the bottom of the page.
}

\note{
    The following notes are a combination from various sources [^3] [^4].
}
### Submitting a job

Let us start by directly handing over a job to Slurm
```bash
$ sbatch --wrap="sleep 100s && /bin/hostname"
Submitted batch job 1
```
the `--wrap` option allows us to wrap a command string into a shell script and submit this script to the job scheduler. 

**Question 1**: What does the command `sleep 100s && /bin/hostname` do? 

Slurm keeps track of the _standard output_ and _error output_ of the command executed and redirects them into an output file. 
By default this file is called `slurm-n.out` where `n` corresponds to the `JobID` (`1` in the example above). 
```bash
$ cat slurm-1.out
c1
```

This job takes a while to complete, in order to see the status of our currently scheduled jobs we use `squeue`:

```bash
$ squeue 
JOBID PARTITION     NAME     USER ST       TIME  NODES NODELIST(REASON)
    1    normal     wrap     root  R       0:01      1 c1
```
With a couple of options we can see more details about the job, e.g. `--start` will tell us the expected start time and with `--user=user_name` we can limit the output to just our jobs.

Now that we have submitted a first job we can have a look how to do this in a more orderly fashion. 
The general format of the `sbatch` command is
```bash
sbatch [OPTIONS(0)...] [ : [OPTIONS(N)...]] script(0) [args(0)...]
```
where the important part here is `script`. 
Let us transfer and extend the previous job into a job script `job.slurm` and add some of the long list of `sbatch` [options](https://slurm.schedmd.com/sbatch.html)
```bash
#!/bin/bash

#SBATCH --job-name=NAME
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1

echo "running on `/bin/hostname`"
for i in {1..10}
do
    sleep 1
    echo $i
done
```
Note that the lines starting with `#SBATCH` are comments for the shell script but will be parsed by `sbatch`. 
We can submit the job and check in the queue
```bash
$ sbatch job.slurm
Submitted batch job 2

$ squeue
JOBID PARTITION     NAME     USER ST       TIME  NODES NODELIST(REASON)
    2    normal    peter     root  R       0:03      1 c1
```

Of course it is possible to have options in the job file and provide them during the call in the command line. 
In this case, the ones provide to the command line will have precedence and this can be used to override our default settings. 

We are not running on a production cluster but of course it is always a good idea to limit the resources that we use as much as possible.
In our case we know how long the job runs so let us include this information.

\exercise{

Have a look at the `sbatch` options and provide a maximal (wallclock) time for the job, e.g. 1 minute. 

What happens if this time is shorter than the runtime of our job?


\solution{

We just show how to include this via a command line argument
```bash
sbatch --time=0:1 job.slurm
```

If the time is smaller than the actual execution time, the job is killed before it finishes. 

You can check this with 
```bash 
$ sacct
JobID           JobName  Partition    Account  AllocCPUS      State ExitCode
------------ ---------- ---------- ---------- ---------- ---------- -------- 
1                 wrap      normal       root          1  COMPLETED      0:0 
1.batch           batch                  root          1  COMPLETED      0:0 
2                 peter     normal       root          1  COMPLETED      0:0 
2.batch           batch                  root          1  COMPLETED      0:0 
3                 peter     normal       root          1    TIMEOUT      0:0 
3.batch           batch                  root          1  CANCELLED     0:15 

```
}
}

By specifying `--ntasks=1` we only requested one task, lets extend this to two and also try the `--verbose` option to see if the actual variable is overwritten.

```bash
$ sbatch --ntasks=2 --verbose job.slurm 
sbatch: defined options
sbatch: -------------------- --------------------
sbatch: cpus-per-task       : 1
sbatch: job-name            : peter
sbatch: ntasks              : 2
sbatch: verbose             : 1
sbatch: -------------------- --------------------
sbatch: end of defined options
sbatch: select/linear: init: Linear node selection plugin loaded with argument 17
sbatch: select/cons_res: common_init: select/cons_res loaded
sbatch: select/cray_aries: init: Cray/Aries node selection plugin loaded
sbatch: select/cons_tres: common_init: select/cons_tres loaded
Submitted batch job 4

$ squeue 
JOBID PARTITION     NAME     USER ST       TIME  NODES NODELIST(REASON)
   4     normal    peter     root  R       0:08      2 c[1-2]
```
and the corresponding output is
```bash
$ cat cat slurm-4.out 
running on c1
1
2
3
4
5
6
7
8
9
10
```

**Question 2**: If the job is run on both nodes, why do we only see `c1` as output?

\exercise{

Now we could also use `--cpus-per-task=2` to allocate two CPUs.

Try this and explain the result.

\solution{
The following will execute the job with one task but two CPUs
```bash
$ sbatch --cpus-per-task=2 --verbose job.slurm 
sbatch: error: CPU count per node can not be satisfied
sbatch: error: Batch job submission failed: Requested node configuration is not available
```
As our test cluster only supports one CPU per node.
Slurm is not able to schedule this task and therefore we get the error. 
}
}

As we can see it might happen, that our job can not be submitted or that we have an error in the setup. 
In order to check if the job is correct, we can use the `--test-only` option
```bash
$ sbatch --test-only job.slurm
sbatch: Job 5 to start at 2023-11-09T17:49:30 using 1 processors on nodes c1 in partition normal

$ sbatch --cpus-per-task=2 --test-only job.slurm
allocation failure: Requested node configuration is not available
```
On success Slurm will tell us when to job is probably starting (to the best of its knowledge) and where. 
If it is not successful we see why. 

### Running parallel jobs

Slurm provides the `srun` command to execute parallel jobs.
The command will do the resource allocation and launch of the task implicitly.
```bash
$ srun --nodes=2 --label /bin/hostname
1: c2
0: c1
```
Here `--nodes=2` allocated two nodes and `--label` includes the task number for the output.
The general format of the `srun` command is
```bash
srun [OPTIONS(0)... [executable(0) [args(0)...]]] [ : [OPTIONS(N)...]] executable(N) [args(N)...]
```
where the important part here is `executable`. 

As we have seen before, we can define multiple tasks in `sbatch` and that is the recommended way.
Therefore, running a parallel job consists of two phases:
1. Starting the job script on the main node selected by the job scheduler. In Slurm terms this is the actual job.
1. Deploy the individual _tasks_ across all of the nodes selected by the job scheduler. In Slurm terms this is called the _job step_. One job might have several job steps. 
\exercise{

Rewrite our `job.slurm` for two tasks.
In order to do so, separate the actual _work_ from the configuration and run the workload with `srun`.

\solution{

We need to split up the code and put the `echo` and the `for` loop into a separate script, i.e. `task.sh`.
This script needs to be _executable_ (`chmod +x`).
```bash
#!/bin/bash

echo "running on `/bin/hostname`"
for i in {1..10}
do
    sleep 1
    echo $i
done
```
and with this we can rewrite `job.slurm` as
```bash
#!/bin/bash

#SBATCH --job-name=NAME
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1

srun --label ./task.sh
```
Do not forget to make `task.sh` executable by calling `chmod +x task.sh`.
```bash
$ sbatch --ntasks=2 job.slurm
Submitted batch job 5

$ squeue 
JOBID PARTITION     NAME     USER ST       TIME  NODES NODELIST(REASON)
    5    normal    peter     root  R       0:02      2 c[1-2]
 cat slurm-5.out 
0: running on c1
1: running on c2
0: 1
1: 1
0: 2
1: 2
0: 3
1: 3
0: 4
1: 4
0: 5
1: 5
0: 6
1: 6
0: 7
1: 7
0: 8
1: 8
0: 9
1: 9
0: 10
1: 10
```
}
}

**Question 3**: Why does the job see the file `task.sh` on every node?

### Interactive jobs

With `srun` we can also start _interactive jobs_. 
This gives us access to a node by still obeying to the job scheduler. 

```bash
[root@slurmctld data]# srun --pty bash
[root@c1 data]# /bin/hostname
c1
[root@c1 data]# exit
exit
[root@slurmctld data]# 
```
Note how the prompt changes. 
For the advanced users, with `--x11` you can also forward the DISPLAY and have e.g. a new `xterm` window.

### Monitoring

We have already seen how to use `squeue` to list all running or waiting jobs. 
There are a couple of options that extend the table, like 
- `--start` to display the estimated start time (you might always start earlier)
- `--name=job_name(s)` for a comma separated list of job names
- `--user=user_name(s)` for a comma separated list of user names

@@important
In particular we can use `squeue` to look up our `JobID` that is needed for a lot of the following commands. 
@@

In order to get information about past jobs we can use `sacct` or `sacct -X` to skip the information about the individual job steps.

```bash
 sacct -X
JobID           JobName  Partition    Account  AllocCPUS      State ExitCode 
------------ ---------- ---------- ---------- ---------- ---------- -------- 
1              hostname     normal       root          2  COMPLETED      0:0 
2              hostname     normal       root          2  COMPLETED      0:0 
3                 peter     normal       root          1    TIMEOUT     13:0 
4                 peter     normal       root          1  COMPLETED      0:0 
5                 peter     normal       root          1  COMPLETED      0:0 
6                 peter     normal       root          1     FAILED      1:0 
7                 peter     normal       root          2  COMPLETED      0:0 
8                  bash     normal       root          1  COMPLETED      0:0 
```

### Altering jobs

While our job is in a _pending_ state we can change its configuration. 
This is done via `scontrol` so for example we can change the maximal runtime with
```bash
scontrol update job JobID TimeLimit=2
```

### Deleting jobs

To delete jobs we use `scancel` together with the `JobID`.
We can actually delete multiple jobs with one call of `scancel`:
```bash
scancel 6
```

### Answers to the questions
1. The command `sleep 10s && /bin/hostname` first sleeps for 10 seconds, afterwards it will output the node (what we usually see in the prompt) where the job is started.

1. Our job only runs on one CPU, therefore it only runs on one of the nodes.

1. The directory is shared over all the nodes. Recall the previous section about shared filesystems, [link](../architecture#storage). 

## Working with Julia in Slurm

If we want to get our Julia project to the cluster there are a couple of things to consider. 

### Software

On a cluster a lot of different people work with different software and quite often with different versions of the same software.
One common example is the toolchain, e.g. GNU compile vs. Intel compiler, or Intel MKL vs. OpenBLAS.
As a consequence, depending on the toolchain programs need to be compiled separately.

In order to keep this sorted most systems have a way of managing modules.
One of the two is likely installed on the cluster
- [Environment Modules](https://modules.readthedocs.io/en/latest/)
- [Lmod](https://lmod.readthedocs.io/en/latest/index.html)
and as long as you are no admin the two can be used more or less in the same way. 

The most important commands are:
```bash
# have a look what modules are available
$ module avail
------ /etc/modulefiles ------
julia/1.9.4 

#load the module
$ module load julia/1.9.4

# remove the module
$ module remove julia/1.9.4
```

\note{
Julia can be a bit tricky to install on a cluster or more precisely it is not completely clear how to do the installation. 
A nice guide can be found [here](https://juliahpc.github.io/JuliaOnHPCClusters/).
}

### Using the `Distributed` package

When discussing [distributed computing](../../hpc/distributed/) we used 
```bash
julia -p 4 --project
```
to start 4 workers.
With the constraints of the job scheduler we need to let Julia know where the workers should be started.
This can be achieved with the `--machine-file=machinefile` option[^5].
The file can be generated with `generate_pbs_nodefile`[^6].

Putting everything together a job file could look as follows:
```bash
#!/bin/bash
#SBATCH --job-name=NAME
#SBATCH --ntasks=4
#SBATCH --cpus-per-task=1

module load julia/1.9.4

export SLURM_NODEFILE=`generate_pbs_nodefile`
julia --machine-file=$SLURM_NODEFILE main.jl
```

\note{
As stated [here](https://juliahpc.github.io/JuliaOnHPCClusters/user_faq/#should_i_use_distributedjl_or_mpijl_for_large-scale_parallelism) there are a couple of downsides to using `Distributed.jl`, but as we have no interconnect and did not introduce `MPI` or `MPI.jl` we still use it. 
}

\exercise{

Let us test this setup with a small test code from github:

1. Get the source `git clone https://github.com/Arpeggeo/julia-distributed-computing.git`
1. Write an appropriate job file.
1. Run the code and check the output

See if your job runs right away or if you need to wait.
}

[^1]: The standard Operating System is Linux, there are some UNIX clusters but Windows is not the way to go here.

[^2]: [www.schedmd.com](https://www.schedmd.com/index.php)

[^3]: [Quickstart](https://slurm.schedmd.com/quickstart.html) the commands section

[^4]: [UIBK LEO5 Tutorial](https://www.uibk.ac.at/zid/systeme/hpc-systeme/common/tutorials/slurm-tutorial.html)

[^5]: [docs](https://docs.julialang.org/en/v1/manual/distributed-computing/#Starting-and-managing-worker-processes)

[^6]: PBS is a different job scheduler, [Wikipedia](https://en.wikipedia.org/wiki/Portable_Batch_System)