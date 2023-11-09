# This file was generated, do not modify it. # hide
function mySumNoInbounds(V)
    s = zero(eltype(V))

    for i in eachindex(V)
        s += V[i]
    end

    return s
end

@benchmark mySumNoInbounds($V)