# This file was generated, do not modify it. # hide
using BenchmarkTools

function mySum(V)
    result = zero(eltype(V))

    for i in eachindex(V)
        @inbounds result += V[i]
    end

    return result
end

a = rand(100_000)
println("Simple sum:")
@btime mySum(a)

println()
println("Built-in sum:")
@btime sum(a)