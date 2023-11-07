# This file was generated, do not modify it. # hide
using BenchmarkTools

function mysum(a)
    result = zero(eltype(a))

    for i in eachindex(a)
        @inbounds result += a[i]
    end

    return result
end


function mysimdsum(a)
    result = zero(eltype(a))

    @simd for i in eachindex(a)
        @inbounds result += a[i]
    end

    return result
end


function mysum2(V)
    s = zero(eltype(V))

    for v in V
        s += v
    end

    return s
end


function mysimdsum2(V)
    s = zero(eltype(V))

    @simd for v in V
        s += v
    end

    return s
end

a = rand(100_000)

println("Simple sum(a)")
@show mysum(a)
@btime mysum($a)

println()
println("Built-in sum")
@show sum(a)
@btime sum($a)

println()
println("Simple mysimdsum")
@show mysimdsum(a)
@btime mysimdsum($a)

println()
println("Simple mysum2")
@show mysum2(a)
@btime mysum2($a)

println()
println("Simple mysimdsum2")
@show mysimdsum2(a)
@btime mysimdsum2($a)