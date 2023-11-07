# This file was generated, do not modify it. # hide
using BenchmarkTools

function mysum(a)
    result = zero(eltype(a))

    for i in eachindex(a)
        @inbounds result += a[i]
    end

    return result
end

a = rand(100_000)
println("\nSimple sum:")
@btime mysum($a)
println("\nBuilt-in sum:")
@btime sum($a)