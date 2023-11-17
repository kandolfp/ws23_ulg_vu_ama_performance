# This file was generated, do not modify it. # hide
using InteractiveUtils

@code_llvm my_sum(a)
printstyled("\n------Separator-------\n\n"; color = :red)
@code_llvm my_sum_simd(a)