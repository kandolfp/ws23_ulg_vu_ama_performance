@def title = "Parallel Computing - Distributed Computing"
@def hascode = true

@def tags = ["Parallel Computing", "Distributed Computing"]

# Distributed computing in Julia
\toc

In Julia we talk about distributed computing when we run Julia processes with separate memory spaces. Julia does not distinguish between processes on the same or on multiple computers.
The main idea is to have remote execution.

Before we start with distributed computing we introduce tasks.

## Tasks

Tasks are part of the [asynchronous programming](https://docs.julialang.org/en/v1/manual/asynchronous-programming/) concepts implemented in Julia.
We can think of a task as a work package with a create-start-run-finish life cycle.
This means, a task can be created and scheduled independently.
Tasks are the basic building block for performing distributed computing in Julia.
This concept of tasks is actually rather similar to how High Performance Computing (HPC) systems work with their job scheduler.

To create a task we can use the `@task` macro, that will return a *runnable* but will not execute it.
We use the `schedule` command to actually execute it.

```julia-repl
julia> t = @task begin; sleep(5); println("done"); end
Task (runnable) @0x00007fb859f336b0

julia> schedule(t)
Task (runnable) @0x00007fb859f336b0

julia> done
```

The main idea is, that a task can be interrupted and the order of tasks is not set.
This means if we have multiple tasks the order of execution is not guaranteed.
This also means, that the main Julia process is not blocked by a task but works independently.
If we want to wait for the task to finish before the calling task continues, we can do this with `wait(t)`.

Most of the time we create a task and schedule it right away.
This can be done by the `@async` macro.
It is basically equivalent to `schedule(@task x)`.
We can also catch the task (and therefore the state) with `t = @async x`.
If we want to wait for several tasks, we can use the `@sync` macro.
It will wait until all enclosed tasks spanned by `@async`, `@spawn`, `@spawnat`, and `@distributed` are completed.

A task can also return a value, we can get the value with `fetch(t)` or with `take!(t)`,  which will remove the value as well.

\example{
The following examples are taken from [Parallel Computing Class on JuliaAcademy.com](https://juliaacademy.com/p/parallel-computing), section *Tasks*:
1. How long will this take?
```julia
@time for i in 1:10
          sleep(1)
      end
```

2. How long will this take?
```julia
@time for i in 1:10
          @async sleep(1)
      end
```

3. How long will this take?
```julia
@time @sync for i in 1:10
                @async sleep(1)
            end
```
\solution{
```julia-repl
julia> @time for i in 1:10
                 sleep(1)
             end
 10.020172 seconds (51 allocations: 1.703 KiB)

julia> @time for i in 1:10
                 @async sleep(1)
             end
  0.017384 seconds (6.40 k allocations: 399.856 KiB, 96.91% compilation time)

julia> @time @sync for i in 1:10
                       @async sleep(1)
                   end
  1.047838 seconds (847 allocations: 53.656 KiB, 4.34% compilation time)

```
}
}

### The $\pi$ example with tasks

Now we apply the task knowledge to our example for computing $\pi$.
In this chapter we will use the following stub throughout the exercises:
```julia
using Base.Threads
using BenchmarkTools
using Distributed
using Random


function sample_M_non_distributed_rng(N::Int64, rng::AbstractRNG)
    M = zero(Int64)

    for _ in 1:N
        if (rand(rng)^2 + rand(rng)^2) < 1
            M += 1
        end
    end

    return M
end


function estimate_pi_distributed(N::Int64, method::Symbol)
    function sample_M_non_distributed(N::Int64)
        return sample_M_non_distributed_rng(N, Random.default_rng())
    end

    function sample_M_tasks(N::Int64)
        # Exercise 1
        return nothing
    end

    function sample_M_distributed(N::Int64)
        # Exercise 2
        return nothing
    end

    function sample_M_distributed_pmap(N::Int64)
        # Exercise 3
        function sample_M_distributed_pmap_inner(N::Int64)
            M = zero(eltype(N))

            for _ in 1:N
                if (rand()^2 + rand()^2) < 1
                    M += 1
                end
            end

            return M
        end

        return nothing
    end

     function_mapping = Dict(
         :ex0 => sample_M_non_distributed,
         :ex1 => sample_M_tasks,
         :ex2 => sample_M_distributed,
         :ex3 => sample_M_distributed_pmap,
     )

     M = function_mapping[method](N)

     est_pi = 4 * M / N

    return est_pi, abs(pi - est_pi)
end
```

\exercise{
Using tasks:
1. Complete the function `sample_M_tasks` by using the `@async` and `@sync` macros.
1. Split the generation of the `N` samples into 4 parts, same as for threads, and schedule the tasks in a loop.
1. Test the result as well as the performance.

Hints: Define a vector of tasks `t = Vector{Task}(undef, n)` to catch the results inside the loop.
You can use `sample_M_non_distributed()` for sampling.

\solution{
Have a look at the end of this chapter.
}
}

## Back to distributed computing

Now that we know what a task is and how to create one we have no difficulty to define what distributed computing is.
It is simply the way to distribute tasks on multiple CPUs or computers.
In Julia, this multiprocessing environment is based on message passing.
It allows tasks to run on multiple processes in separate memory domains, but all at once.
The communication in Julia is not like the one used by [MPI](https://www.mpi-forum.org/docs/).
It is *one-sided*, that is we only need to manage one process in a two-process operation.
These management instructions are also not sent/receive messages but calls to functions or something similar.
For this, Julia provides two primitives, *remote reference* and *remote calls*, the [documentation](https://docs.julialang.org/en/v1/manual/distributed-computing/) tells us: 
> A remote reference is an object that can be used from any process to refer to an object stored on a particular process.
> A remote call is a request by one process to call a certain function on certain arguments on another (possibly the same) process.

All of this is managed by the [`Distributed`](https://docs.julialang.org/en/v1/stdlib/Distributed/#man-distributed) package.
It is easy to imagine, that the field of distributed computing can quickly become quite extensive, so let us look at some concepts that are useful for our $\pi$ example and give us an idea on how this works.

### The $\pi$ example for distributed computing

In order to start with distributed computing, we need to add some distributed processes or *workers*.
Similar as with threads each process has an associated identifier.
The process providing the Julia REPL or the main call has id `1`.
As long as there are more than two processes, each process that does not have id `1` is considered a worker process.

We can add workers at startup:
```bash
$ julia -p 2
```
where we defined 2 workers on the local machine.
We can also add (further) workers from within Julia by calling 
```julia-repl
julia> using Distributed

julia> addprocs(4)
4-element Vector{Int64}:
 4
 5
 6
 7
```
This added four workers and in total we have now seven processes. The return value gives the IDs of the recently added workers. You can also use `procs()` to get a full list of active processes.
Consequently, we can remove workers again by calling
```julia-repl
julia> rmprocs(2:5)
Task (done) @0x00007fb859fc1430
```
and with `myid()` we get the id of the process we are on.

Note that we will often need the same packages on the worker nodes as on the main node. Therefor we need to call julia with the `--project` flag,
```julia
$ julia -p 4 --project
```
or tell so when adding workers:
```julia-repl
julia> using Distributed

julia> addprocs(4, exeflags="--process")
```

### The `@distributed` macro
There is an obvious problem right away.
If we define a function or a variable on a process how does another process know about this? 

The easiest concept is to run a parallel `for` loop.
As before we can do this with a macro, namely the [`@distributed`](https://docs.julialang.org/en/v1/stdlib/Distributed/#Distributed.@distributed) macro.
The general construct is
```julia
@distributed [reducer] for var = range
    body
end
```
>The specified range is partitioned and locally executed across all workers. In case an optional reducer function is specified, `@distributed` performs local reductions on each worker with a final reduction on the calling process.

>Note that without a reducer function, @distributed executes asynchronously, i.e. it spawns independent tasks on all available workers and returns immediately without waiting for completion. To wait for completion, prefix the call with @sync, like :
```julia
@sync @distributed for var = range
    body
end
```

\example{
What is the result for the following code snippet?
```julia-repl
julia> workers()
4-element Vector{Int64}:
 2
 3
 4 
 5

julia> a = zeros(5);

julia> @sync @distributed for i in 1:5
                              a[i] = i
                          end
```
}

Luckily, our $\pi$ example does not need much data movement.

\exercise{
Using distribute:
1. Complete the function `sample_M_distributed` by using the `@distributed` macro and an appropriate *reducer* function (the syntax is `x = @distributed (operator) for ...`).
1. Start Julia with 4 workers (`julia -p 4 --project`), test the accuracy and measure the performance.
\solution{
Have a look at the end of this chapter.
}
}

We can see that this is a very easy way to parallelize and this time the `rand()` function is not causing problems since it is local per task.
We are already faster than the basic implementation and close to the optimized four threads implementation.

The *distributed for loop* with `@distributed` is designed to work well for situations where each iteration is tiny (in terms of computational effort/workload).
Of course, there is also the other possibility, that we have a function with a massive workload and work with the results of these calls.

### The `pmap` and the `@everywhere` macro

As mentioned before, we need to get functions to all the workers, in order to execute them.
For distributing a function or for loading modules we can use the `@everywhere` macro.
As the name suggests, it will make sure that the function is available in the scope of each worker and the main process.
We simply prepend a function with `@everywhere` and nothing more is required.
There are some things to note for this case:
- the function will be compiled on each worker on the first call.
- no local variables are captured but they can be broadcasted (arguments are broadcasted)
```julia
foo = 2
@everywhere bar = $foo
```
- the function will only be available on workers that were present during the call, every worker that is added later will not have it defined.
- a module can be loaded on every worker with `@everywhere using <modulename>`.

The function [`pmap`](https://docs.julialang.org/en/v1/stdlib/Distributed/#Distributed.pmap) is the parallel version of the [`map`](https://docs.julialang.org/en/v1/base/collections/#Base.map) function.
Let us start with `map` before we go on to `pmap`.
The basic idea is to map a collection to a function by applying the function to each element.The result is again a collection.
The syntax is as follows:
```julia
map(f, c...) -> collection
```
We can even include multiple collections and it will apply the function until one collection is exhausted.

\example{
This examples is copied from the [docs](https://docs.julialang.org/en/v1/base/collections/#Base.map)
```julia-repl
julia> map(+, [1, 2, 3], [10, 20, 30, 400, 5000])
3-element Vector{Int64}:
 11
 22
 33

julia> map(x -> x * 2, [1, 2, 3])
3-element Vector{Int64}:
 2
 4
 6 
```
The second example also includes an [anonymous function](https://docs.julialang.org/en/v1/manual/functions/#man-anonymous-functions).
The idea is simply to have a function that is not needed outside of the scope of a function call.
}

Now, `pmap` just distributes the map function on workers.
It has a lot of optional arguments to influence how this is done but we will not need this.

\exercise{
Using `pmap`:
1. Complete the function `sample_M_distributed_pmap` by using the `@everywhere` macro and `pmap` function.
1. Start Julia with 4 workers (`julia -p 4 --project`), test the accuracy and measure the performance.

Hint: define an inner function `sample_M_distributed_pmap_inner` that is distributed to all workers via `@everywhere` and collect the results with `pmap`.
Split up the workers similarly to the tasks example.

\solution{
Have a look at the end of this chapter.
}
}

### Final results
\solution{
Here is the overall solution:
```julia
using Base.Threads
using BenchmarkTools
using Distributed
using Random


function sample_M_non_distributed_rng(N::Int64, rng::AbstractRNG)
    M = zero(Int64)

    for _ in 1:N
        if (rand(rng)^2 + rand(rng)^2) < 1
            M += 1
        end
    end

    return M
end


function estimate_pi_distributed(N::Int64, method::Symbol)
    function sample_M_non_distributed(N::Int64)
        return sample_M_non_distributed_rng(N, Random.default_rng())
    end

    function sample_M_tasks(N::Int64)
        n = nthreads()

        t = Vector{Task}(undef, n)
        len, _ = divrem(N, n)

        @sync for i in 1:n
            t[i] = @async sample_M_non_distributed(len)
        end

        M = sum(fetch.(t))

        return M
    end

    function sample_M_distributed(N::Int64)
        M = @distributed (+) for _ in 1:N
            rand()^2 + rand()^2 < 1
        end

        return M
    end

    function sample_M_distributed_pmap(N::Int64)
        @everywhere function sample_M_distributed_pmap_inner(N::Int64)
            M = zero(eltype(N))

            for _ in 1:N
                if (rand()^2 + rand()^2) < 1
                    M += 1
                end
            end

            return M
        end

        len, _ = divrem(N, nprocs() - 1)

        M = sum(
                pmap(
                        x -> sample_M_distributed_pmap_inner(len),
                        2:nprocs()
                )
        )

        return M
    end

     function_mapping = Dict(
         :ex0 => sample_M_non_distributed,
         :ex1 => sample_M_tasks,
         :ex2 => sample_M_distributed,
         :ex3 => sample_M_distributed_pmap,
     )

     M = function_mapping[method](N)

     est_pi = 4 * M / N

    return est_pi, abs(pi - est_pi)
end
```
}

For comparison, here are our final results with 4 workers:
```julia-repl
$ julia -p 4 --project
  Activating project at `~/dlh/own_lectures/ws23_ulg_vu_ama_performance_prv`
               _
   _       _ _(_)_     |  Documentation: https://docs.julialang.org
  (_)     | (_) (_)    |
   _ _   _| |_  __ _   |  Type "?" for help, "]?" for Pkg help.
  | | | | | | |/ _` |  |
  | | |_| | | | (_| |  |  Version 1.9.4 (2023-11-14)
 _/ |\__'_|_|_|\__'_|  |  Official https://julialang.org/ release
|__/                   |

julia> include("pi_example_distributed.jl")  # We stored our solution code here.
estimate_pi_distributed (generic function with 1 method)

julia> N = 2^30
1073741824

julia> @btime estimate_pi_distributed(N, :ex0)
  2.578 s (31 allocations: 1.92 KiB)
(3.1415886618196964, 3.991770096689606e-6)

julia> @btime estimate_pi_distributed(N, :ex1)
  2.578 s (55 allocations: 3.23 KiB)
(3.141537304967642, 5.5348622151285554e-5)

julia> @btime estimate_pi_distributed(N, :ex2)
  803.336 ms (336 allocations: 14.83 KiB)
(3.141508888453245, 8.376513654795303e-5)

julia> @btime estimate_pi_distributed(N, :ex3)
  680.889 ms (915 allocations: 51.08 KiB)
(3.141591504216194, 1.149373598963166e-6)
```

# Additional information on distributed computing

There is a lot more to say about distributed computing.
Have a read in the [docs](https://docs.julialang.org/en/v1/manual/distributed-computing/) but here are some things we want to mention.
For example, Julia is able to define [shared arrays](https://docs.julialang.org/en/v1/manual/distributed-computing/#man-shared-arrays).
A shared array means the content can be accessed by each worker and it is consistent over all workers.

Furthermore, it is possible to have a cluster, e.g. a managed pool of workers.
This cluster can be distributed on several machines.
We can define various ways of accessing these machines so we can become really flexible about this and maybe start a worker on the laptop of a colleague.
For this we have the [`ClusterManager`](https://docs.julialang.org/en/v1/manual/distributed-computing/#ClusterManagers) package.