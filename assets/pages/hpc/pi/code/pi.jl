# This file was generated, do not modify it. # hide
using BenchmarkTools
using Random


function sample_M_non_distributed_rng(N::Int64, rng::AbstractRNG)
    M = zero(Int64)

    for _ in 1:N
        if (rand(rng)^2 + rand(rng)^2) < 1
            M += 1
        end
    end

    return M
end


function estimate_pi(N::Int64, method::Symbol)
    function sample_M_non_distributed(N::Int64)
        return sample_M_non_distributed_rng(N, Random.default_rng())
    end

     function_mapping = Dict(
         :ex1 => sample_M_non_distributed,
     )

     M = function_mapping[method](N)

     est_pi = 4 * M / N

    return est_pi, abs(pi - est_pi)
end

N = 2^30

@btime estimate_pi(N, :ex1)