# This file was generated, do not modify it. # hide
using BenchmarkTools

function mySum(V)
    result = zero(eltype(V))

    for i in eachindex(V)
        @inbounds result += V[i]
    end

    return result
end


function mySumSIMD(V)
    result = zero(eltype(V))

    @simd for i in eachindex(V)
        @inbounds result += V[i]
    end

    return result
end


function mySum2(V)
    s = zero(eltype(V))

    for v in V
        s += v
    end

    return s
end


function mySumSIMD2(V)
    s = zero(eltype(V))

    @simd for v in V
        s += v
    end

    return s
end

a = rand(100_000)

println("Simple sum")
@show mySum(a)
@btime mySum($a)

println()
println("Built-in sum")
@show sum(a)
@btime sum($a)

println()
println("Simple sum with SIMD")
@show mySumSIMD(a)
@btime mySumSIMD($a)

println()
println("Simple mySum with direct element access")
@show mySum2(a)
@btime mySum2($a)

println()
println("Simple sum with SIMD and direct element access")
@show mySumSIMD2(a)
@btime mySumSIMD2($a)