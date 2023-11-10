@def title = "Remote Computing - High Performance Computing - Usage"
@def hascode = true

@def tags = ["Remote Computing", "High Performance Computing", "Usage"]
# Usage
\toc

## Overview

As we can imagine, the idea of HPC Systems is to be used as much as possible, usually by a lot of different people. 
In order to make sure that we do not interfere with each others' processes (unless wanted) the nodes can not be accessed directly. 
The actual execution of programs is done by a job scheduler. 
We need to define a job, with all the resources we need and hand this job over to the job scheduler. 
The job scheduler will now make sure that all constraints are met and schedule our job along with all the other jobs according to some metric.

While there is a lot of work going into making the access and use of such systems easier, more convenient, more interactive and maybe even provide some graphical user interface, the standard way is via terminal[^1]. 

So via `ssh` we usually reach one of the login nodes and from here we get access to the job scheduler.
We can prepare our job script, maybe compile some sources, sort out data and when everything is finished queue our job. 

While there are different job schedulers around, the most commonly found one is [Slurm](https://www.schedmd.com/). 
The _workload manager_ itself is [open source](https://github.com/SchedMD/slurm), the company SchedMD® _distributes and maintains the canonical version of Slurm as well as providing Slurm support, development, training, installation, and configuration_[^2].

## Slurm - as a job scheduler

@@important
HAVE A CLUSTER ON ONE OF THE WORKSTATIONS OR DOCKER-COMPOSE

Describe the setup
@@

The inner working of the Slurm can be found in the [documentation](https://slurm.schedmd.com/).
The most important commands to know are[^3]
- `sbatch` is used so submit a job script 
- `srun` is used to submit a job for execution in real time
- `scancel` is used to cancel a pending or running job or job step.
- `squeue` reports the state of jobs or job steps.
- `sacct` is used to report job or job step accounting information about active or completed jobs.
- `scontrol` is the administrative tool used to view and/or modify Slurm state.

\note{
    The following notes are a combination from various sources [^3] [^4]
}

Let us dive right in and submit our first job and from there we extend our job to be more refined.

\note{
    The next parts are designed as a type along session. 
    We also ask some questions in between to keep your focus, the [answers](#answers_to_the_questions) are at the bottom of the page.
}

### Submitting a job

Let us start by directly handing over a job to Slurm
```bash
$ sbatch --wrap="sleep 10s && /bin/hostname"
Submitted batch job 1
```
the `--wrap` option allows us to wrap a command string in a shell script and submit it. 

**Question 1**: What does the command `sleep 10s && /bin/hostname` do? 

Slurm keeps track of the standard and error output of the command executed and this is stored into an output file. 
By default this file is called `slurm-n.out` where `n` corresponds to the job number. 
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
With a couple of options we can see more details about the job, e.g. `--start` will tell us the expected start time and with `--user=user_name` we can limit the output to just our users.

Now that we have submitted a first job we can have a look how to do this in a more orderly fashion. 
The general format of the `sbatch` command is
```bash
sbatch [OPTIONS(0)...] [ : [OPTIONS(N)...]] script(0) [args(0)...]
```
where the important part her is `script`. 
Let us transfer and extend the previous job into a job script `job.slurm` and add some of the long list of `sbatch` [options](https://slurm.schedmd.com/sbatch.html)
```bash
#!/bin/bash

#SBATCH --job-name=peter
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
We can submit the job and watch in the queue
```bash
$ sbatch job.slurm
Submitted batch job 2
$ squeue
JOBID PARTITION     NAME     USER ST       TIME  NODES NODELIST(REASON)
    2    normal    peter     root  R       0:03      1 c1
```

Now of course it is possible to have options in the job file and provide them during the call of `sbatch`. 
In this case, the ones provide to the command line will have precedence and this can be used to override your default settings. 

Now we not running on a production cluster but of course it is always a good idea to limit the resources that you use as much as possible.
In our case we know how long the job runs so let us include this information.

\exercise{

Have a look at the `sbatch` options and provide a maximal (wallclock) time for the job, e.g. 11 seconds. 

What happens if this time is shorter than the runtime of our job?

**Important**: for some reason on the test cluster you can not specify seconds, so change the example from above to sleep for `10` seconds and work with one minute. 

\solution{

We just show how to include this via a command line argument.
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

By specifying `--ntasks=1` we only requested one CPU, lets extend this to two and also try the `--verbose` option to see if the actual variable is overwritten.

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
sbatch: error: CPU count per node caperformancen not be satisfied
sbatch: error: Batch job submission failed: Requested node configuration is not available
```
As our testcluster only supports one CPU per node.
Slurm is not able to schedule this task and therefore you get the error telling you this. 
}
}

As we can see it might happen, that our job can not be submitted or that we have an error in the setup. 
In order to check if the job is correct we can use the `--test-only` option
```bash
$ sbatch --test-only job.slurm
sbatch: Job 5 to start at 2023-11-09T17:49:30 using 1 processors on nodes c1 in partition normal

$ sbatch --cpus-per-task=2 --test-only job.slurm
allocation failure: Requested node configuration is not available
```
On success it will tell us when to job will probably run (to the best of its knowledge) and where. 
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

As we have seen before, we can define multiple tasks in `sbatch` and that is the recommended way to do this.
Therefore, running a parallel job consists of two phases:
1. Starting the job script on the main node selected by the job scheduler. In Slurm terms this is the actual job.
1. Deploy the individual _tasks_ across all of the nodes selected by the job scheduler. In Slurm terms this is called the _job step_. One job might have several job steps. 
\example{

Rewrite our `job.slum` for two tasks and such that the actual workload is distributed with `srun`.

\solution{

We need split up the code and put the `echo` and the for loop into a separate script, i.e. `task.sh`.
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

#SBATCH --job-name=peter
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

## Interactive jobs

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

## Answers to the questions
1. The command `sleep 10s && /bin/hostname` first sleeps for 10 seconds, afterwards it will output the node (what we usually see in the prompt) where the job is started.

1. Our job only runs on one CPU, therefore it only runs on one of the nodes.

1. The directory is shared over all the nodes. Recall the shared filesystem section in previous sections. 

[^1]: The standard Operating System is Linux, there are some UNIX clusters but Windows is not the way to go here.

[^2]: [www.schedmd.com](https://www.schedmd.com/index.php)

[^3]: [Quickstart](https://slurm.schedmd.com/quickstart.html) the commands section

[^4]: [UIBK LEO5 Tutorial](https://www.uibk.ac.at/zid/systeme/hpc-systeme/common/tutorials/slurm-tutorial.html)

