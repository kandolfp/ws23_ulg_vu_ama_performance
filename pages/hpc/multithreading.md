@def title = "Parallel Computing - Multithreading"
@def hascode = true

@def tags = ["Parallel Computing", "Multithreading"]

# Multithreading in Julia
\toc

Before we have a look at how [Julia deals with the concept of multithreading](https://docs.julialang.org/en/v1/manual/multi-threading/), let us make clear what we are talking about.

## What is multithreading?

In the terminology of computer science a thread is the smallest sequence of instructions that can be managed by the scheduler of the operating system.
It is often also called a light weight process and is most of the time considered to exist inside the context of a process.
Consequently, multithreading is the ability to manage multiple concurrently executed threads.
Multiple threads share their resources, this makes this quite a powerful tool.
The threads run on a single CPU or on multiple CPUs and give us the opportunity to leverage the full force of our computer (or cell phone for that matter).

## Back to Julia

By default, Julia will start with a single computational thread of execution:
```julia-repl
julia> Threads.nthreads()
1
```
This does not mean that Julia is only using one thread.
We mentioned the [Basic Linear Algebra Subroutines - BLAS](http://www.netlib.org/blas/) before.
Calls to this library (e.g. matrix-matrix multiplication) will be multithreaded by default and therefore, technically you have been doing multithreading all along ;).
Let us illustrate this with a small example.

\example{
Influencing the number of threads in BLAS.
When we include the [LinearAlgebra](https://docs.julialang.org/en/v1/stdlib/LinearAlgebra/) package we get the possibility to manipulate the number of threads.
Here `BLAS` is a wrapper to the BLAS libraries used by Julia.
```julia-repl
julia> using BenchmarkTools, LinearAlgebra

julia> A = rand(2000, 2000);

julia> B = rand(2000, 2000);

julia> BLAS.get_num_threads()
8

julia> @btime $A * $B;
  141.984 ms (2 allocations: 30.52 MiB)

julia> BLAS.set_num_threads(1)

julia> @btime $A * $B;
  1.009 s (2 allocations: 30.52 MiB)
```
}

In order to have multiple threads available you need to start Julia with the `--threads <Int|auto>` option or define the environment variable `JULIA_NUM_THREADS=<Int>`.
With the command `threadid()` from the [`Threads`](https://docs.julialang.org/en/v1/base/base/#Base.Threads) module you can find out on which thread you currently are.
```julia-repl
> julia --threads auto
julia> Threads.nthreads()
16
julia> Threads.threadid()
1
```
By default, the Julia REPL, or the main Julia process for that matter, will always run on the thread with id `1`.
We do not have the time for a deep dive into all the dirty details on how to do proper multithreaded programming (race conditions, locks, atomic operations, thread safe programming, ...), therefore we keep it light and simple with the `@threads` macro and introduce the needed concepts when we need them along the way.

@@important
For comparison, all the benchmarks and computations are performed with `4` threads and `N = 2^30`.
@@

Like all the other macros it gives us the possibility to bring something rather complex in our code by still staying very readable as the following example shows.

\example{
Simple example for the [docs](https://docs.julialang.org/en/v1/manual/multi-threading/#The-@threads-Macro):

```julia-repl
julia> using Base.Threads

julia> nthreads()
4
julia> a = zeros(10);
julia> @threads for i in 1:10
                    a[i] = threadid()
                end

julia> a
10-element Vector{Float64}:
 1.0
 1.0
 1.0
 2.0
 2.0
 2.0
 3.0
 3.0
 4.0
 4.0
 ```
}
@@important
In Julia we have to be aware of the concept of [Task migration](https://docs.julialang.org/en/v1/manual/multi-threading/#man-task-migration).
This means a task started with `@threads` might not always run on the **same** thread but can move threads if the the task yields.
In particular this means we should not treat `threadid()` as a constant and should not use it as an index in e.g. arrays.
By using the `:static` schedule option we can freeze the `threadid()`.
@@
Let us try to apply this concept to our $\pi$ example.

## Multithreaded $\pi$

The obvious first impulse is to just write a `@threads` in front of the loop in our `sample_M_*` routine, well lets follow this impulse.

@@important
We continue working with the draft from the previous section, [Not the most efficient way of computing $\pi$](../pi/).
@@

Using this settings the naive implementation shows the following performance
```julia-repl
julia> N = 2^30
1073741824

julia> @btime estimate_pi(N, :ex1)  # sample_M_non_distributed
  2.624 s (37 allocations: 2.33 KiB)
(3.141611408442259, 1.875485246571884e-5)
```
\exercise{
Using threads:
1. Complete the function `sample_M_threaded` by duplicating the code from `sample_M_non_distributed_rng` (drop `rng`) and adding the `@threads` macro. 
1. Test the result as well as the performance.
\solution{
Have a look at the end of this chapter.
The performance is slower than the naive implementation and the result is even wrong.
In the next section we will see what went wrong.
}
}

### Atomic Operations

As we could see, in the above example from the docs, the loop is automatically split up per index for the threads available.
This means each of the threads is performing the same loop and as the context and memory is shared also access the same storage.
This is problematic for our variable `M`.
This means each thread reads and updates the same variable. To be more specific: the same $M$ is shared among simultaneously running threads which are not synchronised.
In between reading and updating `M` another thread might already have updated the variable and thus the result gets overridden.
In short, the counter will be totally wrong.
We call this a [race condition](https://en.wikipedia.org/wiki/Race_condition).

To solve this issue Julia supports [atomic](https://docs.julialang.org/en/v1/manual/multi-threading/#Atomic-Operations) values.
This allows us to access a variable in a thread-safe way and avoid race conditions.
All primitive types can be wrapped with `M = Atomic{Int64}(0)` and can only be accessed in a thread safe way.
In order to do the atomic add we use the function `atomic_add!(M, 1)` and we can access the value with `M[]`.

\exercise{
Using atomic:
1. Complete the function `sample_M_threaded_atomic` by duplicating the code from `sample_M_threaded` and using an atomic `M`.
1. Test the result as well as the performance.
\solution{
Have a look at the end of this chapter.
Now our result is correct, but the performance is still worse than the naive implementation.
}
}

### Actually distribute the work
We are still not fast, because each `atomic_add!` is checking which thread has the current result and needs to add the new value.
To avoid this we need to eliminate atomic again.
We can actually split up the work quite neatly if we remember the example from the docs.
It is possible to access the `threadid()` and the number of threads `nthreads()`.
So why not define `M` as an array of length `nthreads()` and each thread updates the according position within the array by using `threadid()` as index.

\exercise{
Being tasksafe:
1. Complete the function `sample_M_threaded_tasksafe` by duplicating the code from `sample_M_threaded` and replacing `M` by a vector with `nthreads()` entries.
1. Test the result as well as the performance.
\solution{
Have a look at the end of this chapter.
Now we are performing a worse again.
}
}

Why is it still not faster?

### Global states
Without going into too much detail, `rand()` is thread safe and therefore synchronizes its calls which results in a general slowdown.
In a first step we will no longer use a `for` loop over all desired samples `N`, but a `for` loop over all available threads and see
whether this already improved our performance.

\exercise{
Using buckets:
1. Complete the function `sample_M_threaded_over_buckets` by duplicating the code from `sample_M_threaded_tasksafe` and iterating over the number of threads instead of iterating over the number of samples.
1. Test the result as well as the performance.

Hints: In order for this to work we need to figure out how many iterations each thread needs to perform. 
We can use `divrem()` to get this number (for the sake of simplicity, ignore that we might have a remainder due to division).
Within the loop you can directly call `sample_M_non_distributed()`.

\solution{
Have a look at the end of this chapter.
Great! The performance improved a lot!
}
}

Can we still do better?
As mentioned previously, `rand()` is thread safe and therefore needs to synchronize.
Synchronization always comes at a price in terms of performance.
Let us get rid of this need to synchronize.

First step is to define a separate random number generator per thread:
```julia
RNG = Vector{AbstractRNG}(undef, nthreads())
for i in 1:nthreads()
    RNG[i] = Random.TaskLocalRNG()
end
```
In fact we define a Vector of size `nthreads()` and fill it with distinct random number generators.

This allows us to have a different random number generator for each thread by using
```julia
rng = ThreadRNG[threadid()]
rand(rng)
```
in each thread.

\exercise{
Using separate random number generators:
1. Complete the function `sample_M_threaded_over_buckets_rng` by duplicating the code from `sample_M_threaded_over_buckets` and using `sample_M_non_distributed_rng` and `Random.default_rng()` in the inner loop.
1. Test the result as well as the performance. Are we improving?
1. Try to switch to `Random.MersenneTwister()`. Is it working? Do we improve?
1. Use a different random number generator in each thread by switching to `RNG`. Do we improve?
1. Try to switch to `Random.MersenneTwister(i)` within `RNG`. Is it working? Do we improve?
\solution{
Have a look at the end of this chapter.
As long as we are using `Random.default_rng()` / `TaskLocalRNG()` we are not improving, since they still synchronize.
Switching to `MersenneTwister` is not thread safe, so it crashes when not every thread is having its own instantiation.
Using a separate `MersenneTwister` for each thread improves the performance.
}
}

### Final results

For comparison, here are our final results for 4 computational threads:
```julia
julia> N = 2^30
1073741824

julia> @btime estimate_pi(N, :ex1)  # sample_M_non_distributed
  2.624 s (37 allocations: 2.33 KiB)
(3.141611408442259, 1.875485246571884e-5)

julia> @btime estimate_pi(N, :ex2)  # sample_M_threaded
  12.658 s (843299112 allocations: 12.57 GiB)
(0.8049417361617088, 2.3366509174280843)

julia> @btime estimate_pi(N, :ex3)  # sample_M_threaded_atomic
  7.668 s (64 allocations: 4.69 KiB)
(3.1415357775986195, 5.687599117365494e-5)

julia> @btime estimate_pi(N, :ex4)  # sample_M_threaded_tasksafe
  17.425 s (1686609766 allocations: 25.13 GiB)
(3.1415630020201206, 2.965156967249527e-5)

julia> @btime estimate_pi(N, :ex5)  # sample_M_threaded_over_buckets
  674.323 ms (68 allocations: 4.83 KiB)
(3.141591425985098, 1.2276046952308661e-6)

julia> @btime estimate_pi(N, :ex6)  # sample_M_threaded_over_buckets_rng
  444.370 ms (71 allocations: 4.86 KiB)
(3.1416383907198906, 4.5737130097478484e-5)
```

\solution{
Here is the overall solution code for this chapter:
```julia
using Base.Threads
using BenchmarkTools
using Random

RNG = Vector{AbstractRNG}(undef, nthreads())
for i in 1:nthreads()
    RNG[i] = Random.MersenneTwister(i)
end


function sample_M_non_distributed_rng(N::Int64, rng::AbstractRNG)
    M = zero(Int64)

    for _ in 1:N
        if (rand(rng)^2 + rand(rng)^2) < 1
            M += 1
        end
    end

    return M
end


function estimate_pi(N::Int64, method::Symbol)
    function sample_M_non_distributed(N::Int64)
        sample_M_non_distributed_rng(N, Random.default_rng())
    end

    function sample_M_threaded(N::Int64)
        M = 0

        @threads for _ in 1:N
            if (rand()^2 + rand()^2) < 1
                M += 1
            end
        end

        return M
    end

    function sample_M_threaded_atomic(N::Int64)
        M = Atomic{Int64}(0);

        @threads for _ in 1:N
            if (rand()^2 + rand()^2) < 1
                atomic_add!(M, 1)
            end
        end

        return M[]
    end

    function sample_M_threaded_tasksafe(N::Int64)
        M = zeros(Int64, nthreads());

        @threads :static for _ in 1:N
            if (rand()^2 + rand()^2) < 1
                @inbounds M[threadid()] += 1
            end
        end

        return sum(M)
    end

    function sample_M_threaded_over_buckets(N::Int64)
        M = zeros(Int64, nthreads())
        len, _ = divrem(N, nthreads())

        @threads for i in 1:nthreads()
            M[i] = sample_M_non_distributed(len)
        end

        return sum(M)
    end

    function sample_M_threaded_over_buckets_rng(N::Int64)
        M = zeros(Int64, nthreads())
        len, _ = divrem(N, nthreads())

        @threads for i in 1:nthreads()
          M[i] = sample_M_non_distributed_rng(len, RNG[i])
        end

        return sum(M)
    end

     function_mapping = Dict(
         :ex1 => sample_M_non_distributed,
         :ex2 => sample_M_threaded,  # executable but wrong result
         :ex3 => sample_M_threaded_atomic,
         :ex4 => sample_M_threaded_tasksafe,
         :ex5 => sample_M_threaded_over_buckets,
         :ex6 => sample_M_threaded_over_buckets_rng,
     )

     M = function_mapping[method](N)

     est_pi = 4 * M / N

    return est_pi, abs(pi - est_pi)
end
```
}

### Other pitfalls

There are several other pitfalls that might occur with multithreading, here is an incomplete list:
- **Oversubscription**: We can overdo it with threading.
For example if we multithread an algorithm that uses a BLAS routine, it can result in the scenario, that inside each thread a subroutine is trying to run on multiple threads.
Thus, they might partially block each other and the overall performance is reduced, depending on the capacities we are working on.
- [**False sharing**](https://en.wikipedia.org/wiki/False_sharing): The latency of the different layers of memory inside a CPU vary and also the way a core on a CPU can access it.
Usually, L3 is shared by all cores but not L2 and L1.
This can result in *false* sharing and reduce the performance if one CPU accesses the data from a cache of another CPU.

