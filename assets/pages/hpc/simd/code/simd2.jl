# This file was generated, do not modify it. # hide
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