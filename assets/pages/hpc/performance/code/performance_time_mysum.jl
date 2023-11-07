# This file was generated, do not modify it. # hide
function mysum(V)
    s = zero(eltype(V))

    for i in eachindex(V)
        @inbounds s += V[i]
    end

    return s
end

V = rand(100_000)
@time mysum(V)
@time mysum(V)