# This file was generated, do not modify it. # hide
function my_sum_no_inbounds(V)
    s = zero(eltype(V))

    for i in eachindex(V)
        s += V[i]
    end

    return s
end

@benchmark my_sum_no_inbounds($V)