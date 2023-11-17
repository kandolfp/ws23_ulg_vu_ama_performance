# This file was generated, do not modify it. # hide
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