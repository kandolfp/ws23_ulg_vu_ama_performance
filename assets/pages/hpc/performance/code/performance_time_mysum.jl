# This file was generated, do not modify it. # hide
function mySum(V)
    s = zero(eltype(V))

    for i in eachindex(V)
        @inbounds s += V[i]
    end

    return s
end

V = rand(100_000)
@time mySum(V)
@time mySum(V)