@def title = "Parallel Computing - Exercises"
@def hascode = true

@def tags = ["Parallel Computing", "Exercises"]
# Exercises

Please find below the exercise sheet for this lecture.

## Julia optimize your code

Optimize the following code as much as possible, while still achieving the same result.
Use comments to explain your changes in the code.
You can use everything that you have learned in this lecture or somewhere else.
If you feel like changing the interface to the function that is fine as well.

The points/mark will be based on your improvements and not on the final runtime.
If you use GPUs try to reduce vendor specifics as much as possible but if it helps performance go for it.

As context for the example please have a look at [Julia set](https://en.wikipedia.org/wiki/Julia_set) and the skeleton for the example as

```julia
using Base.Threads, BenchmarkTools, Plots

function juliaset_naive(input, c)
    result_image = zeros(height, width)

    for idx in eachindex(input)
        z = input[idx]
        foundval = false

        for it in 1:maxiter
            if abs2(z) > 4
                result_image[idx] = (it - 1)
                foundval = true
                break
            end

            z = z * z + c
        end

        if !foundval
            result_image[idx] = maxiter
        end
    end

    return result_image
end


# SETUP START
scale = 500.0 # the greater the more details
width = 2000
height = 1000

x = -0.8
y = 0.156

maxiter = 255
# SETUP END

c = x + y * im
xvalues = LinRange(-width / 2, width / 2, width) ./ scale
yvalues = LinRange(-height / 2, height / 2, height) ./ scale
inputmatrix = xvalues' .+ yvalues .* im


@btime juliaset_naive(inputmatrix, c)

result = juliaset_naive(inputmatrix, c)
heatmap(xvalues, yvalues, result, aspect_ratio=true)
```

Please hand in some kind of protocol (e.g. in markdown) where you document your code, the runtime of the `juliaset_naive` function vs. your implementation on your machine and a working copy of your code.

## HPC Cluster

With the docker compose setup of the Slurm-Cluster run the $\pi$ exercises and examples from the [Distributed Computing](https://kandolfp.github.io/ws23_ulg_vu_ama_performance/pages/hpc/distributed/) section.

Please hand in the the job files along with the code you used and the job result files.

The points/mark will be based on the files you hand in and if the jobs can be run on the test setup or not. 

## Additional exercises

Here are some additional exercises/suggestions in case you want to play around with your HPC cluster.

1. Add/remove workers from your cluster (you need to change the `docker-compose.yml` and `slurm.conf` files).
2. Additionally to Julia 1.9.4 install 1.10.0 and switch between them via the `module` environment (use `julia --version` to test).
3. Install some additional software (e.g. `python`, `R`) and create the necessary module files (The image is based on Rocky Linux, a RedHat based Linux).
4. Try changing to 2 CPUs per worker (depending on your hardware you might need to reduce workers)
5. Can be tricky: try to include a GPU into the setup.
6. Change the `SelectType` and therefore how resources can be consumed, see [docs](https://slurm.schedmd.com/cons_tres_share.html).