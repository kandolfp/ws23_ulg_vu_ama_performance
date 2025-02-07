@def title = "Parallel Computing - SIMD"
@def hascode = true

@def tags = ["Parallel Computing", "SIMD"]

# Single-Instruction multiple data

Before we are going to specifically parallelize code we talk about an inbuilt mechanism called *_Single Instruction Multiple Data_* or [SIMD](https://docs.julialang.org/en/v1/base/simd-types/) for short.
The main idea is that *central processing units* (CPUs) or basically any *arithmetic logic unit* (ALU) can perform the same operation on multiple inputs in a single clock cycle.
This was already used for BLAS and LAPACK packages, with the so called *unrolling*.

Let us consider the following example
\begin{align*}
x_1 + y_1 \to z_1\\
x_2 + y_2 \to z_2\\
x_3 + y_3 \to z_3\\
x_4 + y_4 \to z_4
\end{align*}
which should look pretty familiar from the basic vector addition $z = x + y$.
As mentioned, modern processors have *vector units* that can deal with this kind of operation at once, basically:
\begin{align*}
\begin{pmatrix}
x_1\\
x_2\\
x_3\\
x_4
\end{pmatrix}
+
\begin{pmatrix}
y_1\\
y_2\\
y_3\\
y_4
\end{pmatrix}
\to
\begin{pmatrix}
z_1\\
z_2\\
z_3\\
z_4
\end{pmatrix}
\end{align*}
or visualized as:
\figenvsource{Single instruction single data vs. single instruction multiple data.}{/assets/pages/hpc/Single-Instruction-Single-Data-vs-Single-Instruction-Multiple-Data.ppm}{}{https://www.researchgate.net/figure/Single-Instruction-Single-Data-vs-Single-Instruction-Multiple-Data_fig6_45145832}

Even if you do not see it right away, we can modify our sum over a vector, and learn how Julia is including the SIMD concept and why it is most of the time better to call library functions than programming them on your own.
As we already know how to do benchmarking, let us try to figure out if our sum function is doing a good job.
```julia:./code/simd1.jl
using BenchmarkTools

function my_sum(V)
    result = zero(eltype(V))

    for i in eachindex(V)
        @inbounds result += V[i]
    end

    return result
end

a = rand(100_000)
println("Simple sum:")
@btime my_sum(a)

println()
println("Built-in sum:")
@btime sum(a)
```
\show{./code/simd1.jl}
As we can see, we are slower, exactly how much slower depends on the architecture of your CPU but it is usually between 2 to 16 times.

In order to enable SIMD in a program (if it is not done by library calls anyway), we can use the `@simd` macro, this works if we loop over the indices or the elements, Julia is quite flexible there.
```julia:./code/simd2.jl
using BenchmarkTools

function my_sum(V)
    result = zero(eltype(V))

    for i in eachindex(V)
        @inbounds result += V[i]
    end

    return result
end


function my_sum_simd(V)
    result = zero(eltype(V))

    @simd for i in eachindex(V)
        @inbounds result += V[i]
    end

    return result
end


function my_sum_elem_access(V)
    s = zero(eltype(V))

    for v in V
        s += v
    end

    return s
end


function my_sum_simd_elem_access(V)
    s = zero(eltype(V))

    @simd for v in V
        s += v
    end

    return s
end

a = rand(100_000)

println("Simple sum")
@show my_sum(a)
@btime my_sum($a)

println()
println("Built-in sum")
@show sum(a)
@btime sum($a)

println()
println("Simple sum with SIMD")
@show my_sum_simd(a)
@btime my_sum_simd($a)

println()
println("Simple my_sum with direct element access")
@show my_sum_elem_access(a)
@btime my_sum_elem_access($a)

println()
println("Simple sum with SIMD and direct element access")
@show my_sum_simd_elem_access(a)
@btime my_sum_simd_elem_access($a)
```
\show{./code/simd2.jl}
We can see a massive speed up (that will depend on the CPU architecture you are running your code on).
What is interesting is, that the results of the three function calls are not the same.

This is due to the fact that the numerics involved are a bit tricky.
In short, when adding floating point numbers you lose accuracy when adding a large number to a small number.
This is exactly what is happening for our first example as we add all the numbers in one long sequence.

The built-in `sum` function as well as the `@simd` macro allow Julia to change the order of the operations.
In this specific case, it boils down to computing the result for the even and odd entries separately and therefore gaining a bit of accuracy.

If you are not sure if something is vectorized, you can check out the LLVM code for the two versions and see the difference (Hint: look out for something called `vector.ph`).
```julia:./code/simd3.jl
using InteractiveUtils

@code_llvm my_sum(a)
printstyled("\n------Separator-------\n\n"; color = :red)
@code_llvm my_sum_simd(a)
```
\show{./code/simd3.jl}

The [LLVM](https://llvm.org/) project is the compiler toolchain technology that Julia uses for its *Just in Time* (JIT) compilation.
Basically, it translates the Julia code into a machine language close to Assembler (but quite readable, if you get used to it) and this is compiled when needed.
We could see JIT doing its magic in the beginning of the [Benchmark](#how-to-measure-performance-in-julia) section, as the function `my_sum` was compiled on its first run.
Note: in general packages get precompiled before they are used to gain performance.

# Multiple dispatch
While on the subject of performance and the JIT compilation it is time to recall the *multiple dispatch* capabilities of Julia.

Like most of the time, this concept is best explained by showing an example.
In our, now already famous, sum example we never specified what type the argument has.
As long as one was able to loop over it and add the entries it was fine.
That does not mean Julia never cared.
In fact, we can take a look what Julia does for different input types.

For this we use another macro from the `InteractiveUtils` package, namely `@code_typed`.
Again, we get some intermediate code that Julia produces for us.
This time a bit more compact but most important, all the type information of the input argument attached to it.

For an array of `Int64` we get:
```julia:./code/simd4.jl
@code_typed optimize=false my_sum([1, 2, 3])
```
\show{./code/simd4.jl}
and for `Float64`:
```julia:./code/simd5.jl
@code_typed optimize=false my_sum([1.0, 2.0, 3.0])
```
\show{./code/simd5.jl}
We can see, that in the first output everything is of type `Int64`, including the result.
The second output has the same instructions but with `Float64` as type.

As we might have already seen throughout this workshop we can define the same function name for different input arguments.
This is very obvious for the basic math operators but it is true for every function.
Let us have a look at the `+` operator:
```julia:./code/md.jl
methods(+)
```
\show{./code/md.jl}

This shows us two things.
First, we did not think anybody will print this workshop on paper or we would have gone for shorter outputs.
Second, and more importantly, every time we call a function, Julia will look at the type of each argument and search for the function that fits best.
As a result we can write optimized code for different types and in general this is one key stone in the excellent performance of Julia.

Before we continue to the other parallel computation concepts, we introduce an [example](../pi/) that will help us along, same as the sum did for the beginning of this section.
