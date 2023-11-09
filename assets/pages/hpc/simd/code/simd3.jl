# This file was generated, do not modify it. # hide
using InteractiveUtils

@code_llvm mySum(a)
printstyled("\n------Separator-------\n\n"; color = :red)
@code_llvm mySumSIMD(a)