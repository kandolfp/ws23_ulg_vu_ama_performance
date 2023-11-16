# 325 methods for generic function "+" from Base:
   [1] +(x::T, y::T) where T<:Union{Int128, Int16, Int32, Int64, Int8, UInt128, UInt16, UInt32, UInt64, UInt8}
     @ int.jl:87
   [2] +(x::T, y::T) where T<:Union{Float16, Float32, Float64}
     @ float.jl:408
   [3] +(c::Union{UInt16, UInt32, UInt64, UInt8}, x::BigInt)
     @ Base.GMP gmp.jl:539
   [4] +(c::Union{Int16, Int32, Int64, Int8}, x::BigInt)
     @ Base.GMP gmp.jl:545
   [5] +(c::Union{UInt16, UInt32, UInt64, UInt8}, x::BigFloat)
     @ Base.MPFR mpfr.jl:407
   [6] +(c::Union{Int16, Int32, Int64, Int8}, x::BigFloat)
     @ Base.MPFR mpfr.jl:415
   [7] +(c::Union{Float16, Float32, Float64}, x::BigFloat)
     @ Base.MPFR mpfr.jl:423
   [8] +(x::Union{Dates.CompoundPeriod, Dates.Period})
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/periods.jl:342
   [9] +(a::Union{ColorTypes.LMS, ColorTypes.XYZ}, b::Union{ColorTypes.LMS, ColorTypes.XYZ})
     @ Colors ~/.julia/packages/Colors/mIuXl/src/algorithms.jl:4
  [10] +(A::Union{CUDA.CUSPARSE.CuSparseMatrixCOO{T}, LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCOO}, LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCOO}}, B::Union{CUDA.CUSPARSE.CuSparseMatrixCOO{T}, LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCOO}, LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCOO}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:204
  [11] +(a::StaticArraysCore.StaticArray{Tuple{N, M}, T, 2} where {N, M, T}, b::LinearAlgebra.UniformScaling)
     @ StaticArrays ~/.julia/packages/StaticArrays/cZ1ET/src/linalg.jl:29
  [12] +(a::StaticArraysCore.StaticArray)
     @ StaticArrays ~/.julia/packages/StaticArrays/cZ1ET/src/linalg.jl:7
  [13] +(a::StaticArraysCore.StaticArray, b::StaticArraysCore.StaticArray)
     @ StaticArrays ~/.julia/packages/StaticArrays/cZ1ET/src/linalg.jl:12
  [14] +(a::StaticArraysCore.StaticArray, b::AbstractArray)
     @ StaticArrays ~/.julia/packages/StaticArrays/cZ1ET/src/linalg.jl:14
  [15] +(a::AbstractArray, b::StaticArraysCore.StaticArray)
     @ StaticArrays ~/.julia/packages/StaticArrays/cZ1ET/src/linalg.jl:13
  [16] +(D::LinearAlgebra.Diagonal, S::LinearAlgebra.Symmetric)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/diagonal.jl:188
  [17] +(Da::LinearAlgebra.Diagonal, Db::LinearAlgebra.Diagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/diagonal.jl:184
  [18] +(x::LinearAlgebra.Diagonal, H::LinearAlgebra.UpperHessenberg)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:112
  [19] +(lhs::LinearAlgebra.Diagonal, rhs::CUDA.CUSPARSE.CuSparseMatrixCSC{T}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:502
  [20] +(lhs::LinearAlgebra.Diagonal, rhs::CUDA.CUSPARSE.CuSparseMatrixCSR{T}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:502
  [21] +(lhs::LinearAlgebra.Diagonal, rhs::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCOO{T}}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:502
  [22] +(lhs::LinearAlgebra.Diagonal, rhs::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:502
  [23] +(lhs::LinearAlgebra.Diagonal, rhs::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:502
  [24] +(lhs::LinearAlgebra.Diagonal, rhs::CUDA.CUSPARSE.CuSparseMatrixCOO{T}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:502
  [25] +(lhs::LinearAlgebra.Diagonal, rhs::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:502
  [26] +(lhs::LinearAlgebra.Diagonal, rhs::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:502
  [27] +(lhs::LinearAlgebra.Diagonal, rhs::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCOO{T}}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:502
  [28] +(D::LinearAlgebra.Diagonal{var"#s972", V} where {var"#s972"<:Real, V<:AbstractVector{var"#s972"}}, H::LinearAlgebra.Hermitian)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/diagonal.jl:194
  [29] +(A::LinearAlgebra.Diagonal, B::LinearAlgebra.Tridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:168
  [30] +(A::LinearAlgebra.Diagonal, B::LinearAlgebra.Bidiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:130
  [31] +(A::LinearAlgebra.Diagonal, B::LinearAlgebra.SymTridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:140
  [32] +(A::LinearAlgebra.Diagonal{var"#s972", V} where {var"#s972"<:Number, V<:AbstractVector{var"#s972"}}, B::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:246
  [33] +(x::Base.TwicePrecision, y::Number)
     @ twiceprecision.jl:290
  [34] +(x::Base.TwicePrecision{T}, y::Base.TwicePrecision{T}) where T
     @ twiceprecision.jl:296
  [35] +(x::Base.TwicePrecision, y::Base.TwicePrecision)
     @ twiceprecision.jl:301
  [36] +(a::ColorTypes.AbstractRGB, b::ColorTypes.AbstractRGB)
     @ ColorVectorSpace ~/.julia/packages/ColorVectorSpace/tLy1N/src/ColorVectorSpace.jl:272
  [37] +(x::P, y::P) where P<:Dates.Period
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/periods.jl:75
  [38] +(x::Dates.Period, y::Dates.Period)
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/periods.jl:331
  [39] +(y::Dates.Period, x::Dates.CompoundPeriod)
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/periods.jl:333
  [40] +(y::Dates.Period, x::Dates.TimeType)
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:85
  [41] +(x::Dates.Period, r::AbstractRange{<:Dates.TimeType})
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/ranges.jl:64
  [42] +(y::Union{Dates.CompoundPeriod, Dates.Period}, x::AbstractArray{<:Dates.TimeType})
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/deprecated.jl:14
  [43] +(x::Dates.Instant)
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:4
  [44] +(r1::StepRangeLen{T, R}, r2::StepRangeLen{T, R}) where {R<:Base.TwicePrecision, T}
     @ twiceprecision.jl:628
  [45] +(r1::StepRangeLen{T, S}, r2::StepRangeLen{T, S}) where {T, S}
     @ range.jl:1464
  [46] +(A::SparseArrays.AbstractSparseMatrixCSC, B::SparseArrays.AbstractSparseMatrixCSC)
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/SparseArrays/src/sparsematrix.jl:2065
  [47] +(A::SparseArrays.AbstractSparseMatrixCSC, B::Array)
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/SparseArrays/src/sparsematrix.jl:2068
  [48] +(A::SparseArrays.AbstractSparseMatrixCSC{Tv, Ti}, J::LinearAlgebra.UniformScaling{T}) where {T<:Number, Tv, Ti}
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/SparseArrays/src/sparsematrix.jl:4098
  [49] +(r1::OrdinalRange, r2::OrdinalRange)
     @ range.jl:1441
  [50] +(x::Core.LLVMPtr, y::Integer)
     @ LLVM.Interop ~/.julia/packages/LLVM/vIbji/src/interop/pointer.jl:114
  [51] +(x::CUDA.CuPtr, y::Integer)
     @ CUDA ~/.julia/packages/CUDA/nbRJk/src/pointer.jl:76
  [52] +(A::LinearAlgebra.Hermitian, B::LinearAlgebra.Hermitian)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/symmetric.jl:469
  [53] +(A::LinearAlgebra.Hermitian, B::LinearAlgebra.SymTridiagonal{var"#s969", V} where {var"#s969"<:Real, V<:AbstractVector{var"#s969"}})
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/symmetric.jl:488
  [54] +(H::LinearAlgebra.Hermitian, D::LinearAlgebra.Diagonal{var"#s972", V} where {var"#s972"<:Real, V<:AbstractVector{var"#s972"}})
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/diagonal.jl:197
  [55] +(A::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::SparseArrays.AbstractSparseMatrix)
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:15
  [56] +(A::LinearAlgebra.Hermitian, B::SparseArrays.AbstractSparseMatrix)
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:18
  [57] +(A::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Symmetric{<:Real, <:SparseArrays.AbstractSparseMatrix})
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:26
  [58] +(A::LinearAlgebra.Hermitian, B::LinearAlgebra.Symmetric{var"#s972", S} where {var"#s972"<:Real, S<:(AbstractMatrix{<:var"#s972"})})
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/symmetric.jl:483
  [59] +(A::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix})
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:24
  [60] +(A::LinearAlgebra.Hermitian{T, <:GPUArraysCore.AbstractGPUMatrix}, J::LinearAlgebra.UniformScaling{<:Complex}) where T
     @ GPUArrays ~/.julia/packages/GPUArrays/dAUOE/src/host/uniformscaling.jl:72
  [61] +(A::LinearAlgebra.Hermitian, J::LinearAlgebra.UniformScaling{<:Complex})
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/uniformscaling.jl:195
  [62] +(A::LinearAlgebra.Hermitian{T, <:GPUArraysCore.AbstractGPUMatrix}, J::LinearAlgebra.UniformScaling) where T
     @ GPUArrays ~/.julia/packages/GPUArrays/dAUOE/src/host/uniformscaling.jl:53
  [63] +(A::LinearAlgebra.LowerTriangular, B::LinearAlgebra.LowerTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/triangular.jl:643
  [64] +(A::LinearAlgebra.LowerTriangular, B::LinearAlgebra.UnitLowerTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/triangular.jl:645
  [65] +(A::LinearAlgebra.LowerTriangular, B::LinearAlgebra.Bidiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:91
  [66] +(A::LinearAlgebra.LowerTriangular{T, <:GPUArraysCore.AbstractGPUMatrix}, J::LinearAlgebra.UniformScaling) where T
     @ GPUArrays ~/.julia/packages/GPUArrays/dAUOE/src/host/uniformscaling.jl:53
  [67] +(F::LinearAlgebra.Hessenberg, J::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:647
  [68] +(x::CUDA.CuArrayPtr, y::Integer)
     @ CUDA ~/.julia/packages/CUDA/nbRJk/src/pointer.jl:185
  [69] +(A::LinearAlgebra.UpperTriangular, B::LinearAlgebra.UpperTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/triangular.jl:642
  [70] +(A::LinearAlgebra.UpperTriangular, B::LinearAlgebra.UnitUpperTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/triangular.jl:644
  [71] +(x::LinearAlgebra.UpperTriangular, H::LinearAlgebra.UpperHessenberg)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:112
  [72] +(A::LinearAlgebra.UpperTriangular, B::LinearAlgebra.Bidiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:91
  [73] +(A::LinearAlgebra.UpperTriangular{T, <:GPUArraysCore.AbstractGPUMatrix}, J::LinearAlgebra.UniformScaling) where T
     @ GPUArrays ~/.julia/packages/GPUArrays/dAUOE/src/host/uniformscaling.jl:53
  [74] +(p::SpecialFunctions.SimplePoly{S}, q::SpecialFunctions.SimplePoly{T}) where {S, T}
     @ SpecialFunctions ~/.julia/packages/SpecialFunctions/QH8rV/src/expint.jl:11
  [75] +(A::LinearAlgebra.Tridiagonal, B::LinearAlgebra.Tridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/tridiag.jl:754
  [76] +(x::LinearAlgebra.Tridiagonal, H::LinearAlgebra.UpperHessenberg)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:112
  [77] +(A::LinearAlgebra.Tridiagonal, B::LinearAlgebra.SymTridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:162
  [78] +(A::LinearAlgebra.Tridiagonal, B::LinearAlgebra.Diagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:178
  [79] +(A::LinearAlgebra.Tridiagonal, B::LinearAlgebra.Bidiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:198
  [80] +(A::LinearAlgebra.Tridiagonal{var"#s972", V} where {var"#s972"<:Number, V<:AbstractVector{var"#s972"}}, B::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:231
  [81] +(x::Ptr, y::Integer)
     @ pointer.jl:167
  [82] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.SymTridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/tridiag.jl:207
  [83] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.Symmetric)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/symmetric.jl:485
  [84] +(A::LinearAlgebra.SymTridiagonal{var"#s970", V} where {var"#s970"<:Real, V<:AbstractVector{var"#s970"}}, B::LinearAlgebra.Hermitian)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/symmetric.jl:487
  [85] +(x::LinearAlgebra.SymTridiagonal, H::LinearAlgebra.UpperHessenberg)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:112
  [86] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.Diagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:150
  [87] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.Tridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:164
  [88] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.Bidiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:218
  [89] +(A::LinearAlgebra.SymTridiagonal{var"#s972", V} where {var"#s972"<:Number, V<:AbstractVector{var"#s972"}}, B::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:236
  [90] +(A::CUDA.CuArray{T, 2}, B::LinearAlgebra.Adjoint{T, <:CUDA.CuArray{T, 2}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUBLAS ~/.julia/packages/CUDA/nbRJk/lib/cublas/linalg.jl:675
  [91] +(A::CUDA.CuArray{T, 2}, B::LinearAlgebra.Transpose{T, <:CUDA.CuArray{T, 2}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUBLAS ~/.julia/packages/CUDA/nbRJk/lib/cublas/linalg.jl:675
  [92] +(A::CUDA.CuArray{T, 2}, B::CUDA.CuArray{T, 2}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUBLAS ~/.julia/packages/CUDA/nbRJk/lib/cublas/linalg.jl:675
  [93] +(bb1::Measures.BoundingBox, bb2::Measures.BoundingBox)
     @ Plots ~/.julia/packages/Plots/sxUvK/src/layouts.jl:21
  [94] +(r::AbstractRange{<:Dates.TimeType}, x::Dates.Period)
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/ranges.jl:65
  [95] +(x::AbstractArray{<:Dates.TimeType}, y::Union{Dates.CompoundPeriod, Dates.Period})
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/deprecated.jl:6
  [96] +(A::LinearAlgebra.UnitUpperTriangular, B::LinearAlgebra.UpperTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/triangular.jl:646
  [97] +(A::LinearAlgebra.UnitUpperTriangular, B::LinearAlgebra.UnitUpperTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/triangular.jl:648
  [98] +(x::LinearAlgebra.UnitUpperTriangular, H::LinearAlgebra.UpperHessenberg)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:112
  [99] +(A::LinearAlgebra.UnitUpperTriangular, B::LinearAlgebra.Bidiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:91
 [100] +(A::LinearAlgebra.UnitUpperTriangular{T, <:GPUArraysCore.AbstractGPUMatrix}, J::LinearAlgebra.UniformScaling) where T
     @ GPUArrays ~/.julia/packages/GPUArrays/dAUOE/src/host/uniformscaling.jl:33
 [101] +(UL::LinearAlgebra.UnitUpperTriangular, J::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/uniformscaling.jl:181
 [102] +(A::Array, Bs::Array...)
     @ arraymath.jl:12
 [103] +(X::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}}, Y::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}})
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/deprecated.jl:62
 [104] +(A::Array, B::SparseArrays.AbstractSparseMatrixCSC)
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/SparseArrays/src/sparsematrix.jl:2069
 [105] +(r1::LinRange{T}, r2::LinRange{T}) where T
     @ range.jl:1448
 [106] +(r1::Union{LinRange, OrdinalRange, StepRangeLen}, r2::Union{LinRange, OrdinalRange, StepRangeLen})
     @ range.jl:1457
 [107] +(y::Dates.TimeType, x::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}})
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/deprecated.jl:18
 [108] +(x::AbstractIrrational, y::AbstractIrrational)
     @ irrationals.jl:161
 [109] +(A::LinearAlgebra.UnitLowerTriangular, B::LinearAlgebra.LowerTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/triangular.jl:647
 [110] +(A::LinearAlgebra.UnitLowerTriangular, B::LinearAlgebra.UnitLowerTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/triangular.jl:649
 [111] +(A::LinearAlgebra.UnitLowerTriangular, B::LinearAlgebra.Bidiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:91
 [112] +(A::LinearAlgebra.UnitLowerTriangular{T, <:GPUArraysCore.AbstractGPUMatrix}, J::LinearAlgebra.UniformScaling) where T
     @ GPUArrays ~/.julia/packages/GPUArrays/dAUOE/src/host/uniformscaling.jl:33
 [113] +(UL::LinearAlgebra.UnitLowerTriangular, J::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/uniformscaling.jl:181
 [114] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix})
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:14
 [115] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Hermitian)
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:17
 [116] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix})
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:14
 [117] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Symmetric)
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:17
 [118] +(a::Measures.Length{U}, b::Measures.Length{U}) where U
     @ Measures ~/.julia/packages/Measures/PKOxJ/src/length.jl:31
 [119] +(a::Measures.Measure, b::Measures.Measure)
     @ Measures ~/.julia/packages/Measures/PKOxJ/src/operations.jl:41
 [120] +(lhs::CUDA.CUSPARSE.CuSparseMatrixCSR{T}, rhs::LinearAlgebra.Diagonal) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:505
 [121] +(A::CUDA.CUSPARSE.CuSparseMatrixCSR{T}, J::LinearAlgebra.UniformScaling) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:475
 [122] +(A::CUDA.CUSPARSE.CuSparseMatrixCSR{T}, B::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [123] +(A::CUDA.CUSPARSE.CuSparseMatrixCSR{T}, B::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [124] +(A::CUDA.CUSPARSE.CuSparseMatrixCSR{T}, B::CUDA.CUSPARSE.CuSparseMatrixCSR{T}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [125] +(a::ColorTypes.TransparentGray, b::ColorTypes.TransparentGray)
     @ ColorVectorSpace ~/.julia/packages/ColorVectorSpace/tLy1N/src/ColorVectorSpace.jl:312
 [126] +(a::ColorTypes.TransparentColor{C, T, 4} where {C<:ColorTypes.AbstractRGB, T}, b::ColorTypes.TransparentColor{C, T, 4} where {C<:ColorTypes.AbstractRGB, T})
     @ ColorVectorSpace ~/.julia/packages/ColorVectorSpace/tLy1N/src/ColorVectorSpace.jl:274
 [127] +(c::Union{ColorTypes.TransparentColor{C, Bool}, C} where C<:Union{ColorTypes.AbstractRGB{Bool}, ColorTypes.AbstractGray{Bool}})
     @ ColorVectorSpace ~/.julia/packages/ColorVectorSpace/tLy1N/src/ColorVectorSpace.jl:250
 [128] +(x::T, y::Integer) where T<:AbstractChar
     @ char.jl:237
 [129] +(x::X, y::X) where X<:FixedPointNumbers.FixedPoint
     @ FixedPointNumbers ~/.julia/packages/FixedPointNumbers/HAGk2/src/FixedPointNumbers.jl:237
 [130] +(A::LinearAlgebra.Adjoint{T, <:CUDA.CuArray{T, 2}}, B::LinearAlgebra.Transpose{T, <:CUDA.CuArray{T, 2}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUBLAS ~/.julia/packages/CUDA/nbRJk/lib/cublas/linalg.jl:675
 [131] +(A::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}, B::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [132] +(A::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}, B::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [133] +(lhs::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}, rhs::LinearAlgebra.Diagonal) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:505
 [134] +(lhs::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}, rhs::LinearAlgebra.Diagonal) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:505
 [135] +(lhs::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCOO{T}}, rhs::LinearAlgebra.Diagonal) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:505
 [136] +(A::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}, B::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [137] +(A::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}, B::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [138] +(A::LinearAlgebra.Adjoint{T, <:CUDA.CuArray{T, 2}}, B::LinearAlgebra.Adjoint{T, <:CUDA.CuArray{T, 2}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUBLAS ~/.julia/packages/CUDA/nbRJk/lib/cublas/linalg.jl:675
 [139] +(A::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}, B::CUDA.CUSPARSE.CuSparseMatrixCSC{T}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [140] +(A::LinearAlgebra.Adjoint{T, <:CUDA.CuArray{T, 2}}, B::CUDA.CuArray{T, 2}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUBLAS ~/.julia/packages/CUDA/nbRJk/lib/cublas/linalg.jl:675
 [141] +(A::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}, B::CUDA.CUSPARSE.CuSparseMatrixCSR{T}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [142] +(A::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCOO{T}}, J::LinearAlgebra.UniformScaling) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:475
 [143] +(A::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}, J::LinearAlgebra.UniformScaling) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:475
 [144] +(A::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}, J::LinearAlgebra.UniformScaling) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:475
 [145] +(a::SentinelArrays.ChainedVectorIndex, b::SentinelArrays.ChainedVectorIndex)
     @ SentinelArrays ~/.julia/packages/SentinelArrays/1kRo4/src/chainedvector.jl:209
 [146] +(a::SentinelArrays.ChainedVectorIndex, b::Integer)
     @ SentinelArrays ~/.julia/packages/SentinelArrays/1kRo4/src/chainedvector.jl:207
 [147] +(y::AbstractFloat, x::Bool)
     @ bool.jl:176
 [148] +(A::LinearAlgebra.Symmetric, B::LinearAlgebra.Symmetric)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/symmetric.jl:469
 [149] +(A::LinearAlgebra.Symmetric, B::LinearAlgebra.SymTridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/symmetric.jl:486
 [150] +(S::LinearAlgebra.Symmetric, D::LinearAlgebra.Diagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/diagonal.jl:191
 [151] +(A::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::SparseArrays.AbstractSparseMatrix)
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:15
 [152] +(A::LinearAlgebra.Symmetric, B::SparseArrays.AbstractSparseMatrix)
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:18
 [153] +(A::LinearAlgebra.Symmetric{<:Real, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix})
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:25
 [154] +(A::LinearAlgebra.Symmetric{var"#s971", S} where {var"#s971"<:Real, S<:(AbstractMatrix{<:var"#s971"})}, B::LinearAlgebra.Hermitian)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/symmetric.jl:484
 [155] +(A::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix})
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:23
 [156] +(A::LinearAlgebra.Symmetric{T, <:GPUArraysCore.AbstractGPUMatrix}, J::LinearAlgebra.UniformScaling) where T
     @ GPUArrays ~/.julia/packages/GPUArrays/dAUOE/src/host/uniformscaling.jl:53
 [157] +(a::Tuple{Vararg{Measures.Measure, N}}, b::Tuple{Vararg{Measures.Measure, N}}) where N
     @ Measures ~/.julia/packages/Measures/PKOxJ/src/point.jl:21
 [158] +(a::Tuple{Vararg{Measures.Measure, N}} where N, b::Tuple{Vararg{Measures.Measure, N}} where N)
     @ Measures ~/.julia/packages/Measures/PKOxJ/src/point.jl:15
 [159] +(A::CUDA.CUSPARSE.CuSparseVector{T}, B::CUDA.CUSPARSE.CuSparseVector{T}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:202
 [160] +(a::ColorVectorSpace.RGBRGB)
     @ ColorVectorSpace ~/.julia/packages/ColorVectorSpace/tLy1N/src/ColorVectorSpace.jl:411
 [161] +(a::ColorVectorSpace.RGBRGB, b::ColorVectorSpace.RGBRGB)
     @ ColorVectorSpace ~/.julia/packages/ColorVectorSpace/tLy1N/src/ColorVectorSpace.jl:413
 [162] +(z::Complex, w::Complex)
     @ complex.jl:291
 [163] +(A::GPUArraysCore.AbstractGPUMatrix{T}, J::LinearAlgebra.UniformScaling) where T
     @ GPUArrays ~/.julia/packages/GPUArrays/dAUOE/src/host/uniformscaling.jl:89
 [164] +(x::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}})
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/deprecated.jl:55
 [165] +(x::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}}, y::Dates.TimeType)
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/deprecated.jl:10
 [166] +(J::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/uniformscaling.jl:149
 [167] +(J::LinearAlgebra.UniformScaling{T}, A::SparseArrays.AbstractSparseMatrixCSC{Tv, Ti}) where {T<:Number, Tv, Ti}
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/SparseArrays/src/sparsematrix.jl:4100
 [168] +(x::LinearAlgebra.UniformScaling, H::LinearAlgebra.UpperHessenberg)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:112
 [169] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.Diagonal{var"#s972", V} where {var"#s972"<:Number, V<:AbstractVector{var"#s972"}})
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:265
 [170] +(J::LinearAlgebra.UniformScaling, F::LinearAlgebra.Hessenberg)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:648
 [171] +(J::LinearAlgebra.UniformScaling, A::CUDA.CUSPARSE.CuSparseMatrixCSC{T}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:476
 [172] +(J::LinearAlgebra.UniformScaling, A::CUDA.CUSPARSE.CuSparseMatrixCSR{T}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:476
 [173] +(J::LinearAlgebra.UniformScaling, A::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCOO{T}}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:476
 [174] +(J::LinearAlgebra.UniformScaling, A::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:476
 [175] +(J::LinearAlgebra.UniformScaling, A::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:476
 [176] +(J::LinearAlgebra.UniformScaling, A::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCOO{T}}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:476
 [177] +(J::LinearAlgebra.UniformScaling, A::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:476
 [178] +(J::LinearAlgebra.UniformScaling, A::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:476
 [179] +(J::LinearAlgebra.UniformScaling, A::CUDA.CUSPARSE.CuSparseMatrixCOO{T}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:476
 [180] +(J::LinearAlgebra.UniformScaling, x::Number)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/uniformscaling.jl:144
 [181] +(J1::LinearAlgebra.UniformScaling, J2::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/uniformscaling.jl:150
 [182] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.Tridiagonal{var"#s972", V} where {var"#s972"<:Number, V<:AbstractVector{var"#s972"}})
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:250
 [183] +(a::LinearAlgebra.UniformScaling, b::StaticArraysCore.StaticArray{Tuple{N, M}, T, 2} where {N, M, T})
     @ StaticArrays ~/.julia/packages/StaticArrays/cZ1ET/src/linalg.jl:30
 [184] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.SymTridiagonal{var"#s972", V} where {var"#s972"<:Number, V<:AbstractVector{var"#s972"}})
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:255
 [185] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.Bidiagonal{var"#s972", V} where {var"#s972"<:Number, V<:AbstractVector{var"#s972"}})
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:260
 [186] +(J::LinearAlgebra.UniformScaling, B::BitMatrix)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/uniformscaling.jl:152
 [187] +(J::LinearAlgebra.UniformScaling, A::AbstractMatrix)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/uniformscaling.jl:153
 [188] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.Bidiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/bidiag.jl:374
 [189] +(x::LinearAlgebra.Bidiagonal, H::LinearAlgebra.UpperHessenberg)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:112
 [190] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.UpperTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:99
 [191] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.UnitUpperTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:99
 [192] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.LowerTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:99
 [193] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.UnitLowerTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:99
 [194] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.Diagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:120
 [195] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.Tridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:188
 [196] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.SymTridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:208
 [197] +(A::LinearAlgebra.Bidiagonal{var"#s972", V} where {var"#s972"<:Number, V<:AbstractVector{var"#s972"}}, B::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:241
 [198] +(A::LinearAlgebra.Transpose{T, <:CUDA.CuArray{T, 2}}, B::LinearAlgebra.Transpose{T, <:CUDA.CuArray{T, 2}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUBLAS ~/.julia/packages/CUDA/nbRJk/lib/cublas/linalg.jl:675
 [199] +(A::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}, B::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [200] +(A::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}, B::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [201] +(lhs::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}, rhs::LinearAlgebra.Diagonal) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:505
 [202] +(lhs::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}, rhs::LinearAlgebra.Diagonal) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:505
 [203] +(lhs::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCOO{T}}, rhs::LinearAlgebra.Diagonal) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:505
 [204] +(A::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}, B::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [205] +(A::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}, B::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [206] +(A::LinearAlgebra.Transpose{T, <:CUDA.CuArray{T, 2}}, B::LinearAlgebra.Adjoint{T, <:CUDA.CuArray{T, 2}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUBLAS ~/.julia/packages/CUDA/nbRJk/lib/cublas/linalg.jl:675
 [207] +(A::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}, B::CUDA.CUSPARSE.CuSparseMatrixCSC{T}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [208] +(A::LinearAlgebra.Transpose{T, <:CUDA.CuArray{T, 2}}, B::CUDA.CuArray{T, 2}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUBLAS ~/.julia/packages/CUDA/nbRJk/lib/cublas/linalg.jl:675
 [209] +(A::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}, B::CUDA.CUSPARSE.CuSparseMatrixCSR{T}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [210] +(A::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCOO{T}}, J::LinearAlgebra.UniformScaling) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:475
 [211] +(A::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}, J::LinearAlgebra.UniformScaling) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:475
 [212] +(A::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}, J::LinearAlgebra.UniformScaling) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:475
 [213] +(A::LinearAlgebra.UpperHessenberg, B::LinearAlgebra.UpperHessenberg)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:104
 [214] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:111
 [215] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.Diagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:111
 [216] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.Bidiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:111
 [217] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.Tridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:111
 [218] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.SymTridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:111
 [219] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.UpperTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:111
 [220] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.UnitUpperTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:111
 [221] +(A::BitArray, B::BitArray)
     @ bitarray.jl:1184
 [222] +(lhs::CUDA.CUSPARSE.CuSparseMatrixCSC{T}, rhs::LinearAlgebra.Diagonal) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:505
 [223] +(A::CUDA.CUSPARSE.CuSparseMatrixCSC{T}, J::LinearAlgebra.UniformScaling) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:475
 [224] +(A::CUDA.CUSPARSE.CuSparseMatrixCSC{T}, B::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [225] +(A::CUDA.CUSPARSE.CuSparseMatrixCSC{T}, B::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [226] +(A::CUDA.CUSPARSE.CuSparseMatrixCSC{T}, B::CUDA.CUSPARSE.CuSparseMatrixCSC{T}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [227] +(x::SparseArrays.AbstractSparseVector, y::SparseArrays.AbstractSparseVector)
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/SparseArrays/src/sparsevector.jl:1516
 [228] +(index1::CartesianIndex{N}, index2::CartesianIndex{N}) where N
     @ Base.IteratorsMD multidimensional.jl:111
 [229] +(a::CEnum.Cenum{T}, b::S) where {T<:Integer, S<:Integer}
     @ CEnum ~/.julia/packages/CEnum/Bqafi/src/operators.jl:9
 [230] +(a::CEnum.Cenum{T}, b::CEnum.Cenum{S}) where {T<:Integer, S<:Integer}
     @ CEnum ~/.julia/packages/CEnum/Bqafi/src/operators.jl:5
 [231] +(a::ColorTypes.AbstractGray{Bool}, b::Bool)
     @ ColorVectorSpace ~/.julia/packages/ColorVectorSpace/tLy1N/src/ColorVectorSpace.jl:322
 [232] +(a::ColorTypes.AbstractGray{Bool}, b::Number)
     @ ColorVectorSpace ~/.julia/packages/ColorVectorSpace/tLy1N/src/ColorVectorSpace.jl:321
 [233] +(a::ColorTypes.AbstractGray, b::Number)
     @ ColorVectorSpace ~/.julia/packages/ColorVectorSpace/tLy1N/src/ColorVectorSpace.jl:320
 [234] +(a::ColorTypes.AbstractGray{Bool}, b::ColorTypes.AbstractGray{Bool})
     @ ColorVectorSpace ~/.julia/packages/ColorVectorSpace/tLy1N/src/ColorVectorSpace.jl:311
 [235] +(c::Union{ColorTypes.TransparentColor{C, T}, C} where {T, C<:Union{ColorTypes.AbstractRGB{T}, ColorTypes.AbstractGray{T}}})
     @ ColorVectorSpace ~/.julia/packages/ColorVectorSpace/tLy1N/src/ColorVectorSpace.jl:249
 [236] +(a::ColorTypes.AbstractGray, b::ColorTypes.AbstractGray)
     @ ColorVectorSpace ~/.julia/packages/ColorVectorSpace/tLy1N/src/ColorVectorSpace.jl:310
 [237] +(a::Union{ColorTypes.TransparentColor{C, T}, C} where {T, C<:Union{ColorTypes.AbstractRGB{T}, ColorTypes.AbstractGray{T}}}, b::Union{ColorTypes.TransparentColor{C, T}, C} where {T, C<:Union{ColorTypes.AbstractRGB{T}, ColorTypes.AbstractGray{T}}})
     @ ColorVectorSpace ~/.julia/packages/ColorVectorSpace/tLy1N/src/ColorVectorSpace.jl:260
 [238] +(A::LinearAlgebra.AbstractTriangular, B::LinearAlgebra.AbstractTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/triangular.jl:650
 [239] +(lhs::CUDA.CUSPARSE.CuSparseMatrixCOO{T}, rhs::LinearAlgebra.Diagonal) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:505
 [240] +(A::AbstractArray, B::AbstractArray)
     @ arraymath.jl:6
 [241] +(A::CUDA.CUSPARSE.CuSparseMatrixCOO{T}, J::LinearAlgebra.UniformScaling) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:475
 [242] +(x::Rational, y::Integer)
     @ rational.jl:327
 [243] +(x::Dates.Time, y::Dates.TimePeriod)
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:83
 [244] +(t::Dates.Time, dt::Dates.Date)
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:20
 [245] +(x::Bool)
     @ bool.jl:163
 [246] +(x::Integer, y::Ptr)
     @ pointer.jl:169
 [247] +(y::Integer, x::Rational)
     @ rational.jl:334
 [248] +(x::Integer, y::AbstractChar)
     @ char.jl:247
 [249] +(a::T, b::CEnum.Cenum{S}) where {T<:Integer, S<:Integer}
     @ CEnum ~/.julia/packages/CEnum/Bqafi/src/operators.jl:13
 [250] +(x::Integer, y::Core.LLVMPtr)
     @ LLVM.Interop ~/.julia/packages/LLVM/vIbji/src/interop/pointer.jl:116
 [251] +(a::Integer, b::SentinelArrays.ChainedVectorIndex)
     @ SentinelArrays ~/.julia/packages/SentinelArrays/1kRo4/src/chainedvector.jl:208
 [252] +(x::Integer, y::CUDA.CuArrayPtr)
     @ CUDA ~/.julia/packages/CUDA/nbRJk/src/pointer.jl:187
 [253] +(x::Integer, y::CUDA.CuPtr)
     @ CUDA ~/.julia/packages/CUDA/nbRJk/src/pointer.jl:78
 [254] +(x::Bool, y::T) where T<:AbstractFloat
     @ bool.jl:173
 [255] +(x::Bool, y::Bool)
     @ bool.jl:166
 [256] +(x::Bool, z::Complex{Bool})
     @ complex.jl:302
 [257] +(x::Bool, z::Complex)
     @ complex.jl:309
 [258] +(a::OpenSSL.BigNum, b::OpenSSL.BigNum)
     @ OpenSSL ~/.julia/packages/OpenSSL/8wxMC/src/OpenSSL.jl:747
 [259] +(a::Pkg.Resolve.FieldValue, b::Pkg.Resolve.FieldValue)
     @ Pkg.Resolve /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Pkg/src/Resolve/fieldvalues.jl:43
 [260] +(a::Random123.__m128i, b::Integer)
     @ Random123 ~/.julia/packages/Random123/u5oEp/src/aesni_common.jl:35
 [261] +(a::Random123.__m128i, b::Random123.__m128i)
     @ Random123 ~/.julia/packages/Random123/u5oEp/src/aesni_common.jl:29
 [262] +(z::Complex{Bool}, x::Bool)
     @ complex.jl:303
 [263] +(z::Complex, x::Bool)
     @ complex.jl:310
 [264] +(z::Complex{Bool}, x::Real)
     @ complex.jl:317
 [265] +(z::Complex)
     @ complex.jl:289
 [266] +(z::Complex, x::Real)
     @ complex.jl:329
 [267] +(dt::Dates.Date, t::Dates.Time)
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:19
 [268] +(dt::Dates.Date, y::Dates.Year)
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:27
 [269] +(dt::Dates.Date, z::Dates.Month)
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:54
 [270] +(x::Dates.Date, y::Dates.Quarter)
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:73
 [271] +(x::Dates.Date, y::Dates.Week)
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:77
 [272] +(x::Dates.Date, y::Dates.Day)
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:79
 [273] +(x::BigInt, c::Union{UInt16, UInt32, UInt64, UInt8})
     @ Base.GMP gmp.jl:538
 [274] +(x::BigInt, c::Union{Int16, Int32, Int64, Int8})
     @ Base.GMP gmp.jl:544
 [275] +(x::BigInt, y::BigInt)
     @ Base.GMP gmp.jl:490
 [276] +(a::BigInt, b::BigInt, c::BigInt)
     @ Base.GMP gmp.jl:530
 [277] +(a::BigInt, b::BigInt, c::BigInt, d::BigInt)
     @ Base.GMP gmp.jl:531
 [278] +(a::BigInt, b::BigInt, c::BigInt, d::BigInt, e::BigInt)
     @ Base.GMP gmp.jl:532
 [279] +(x::BigInt, y::BigInt, rest::BigInt...)
     @ Base.GMP gmp.jl:666
 [280] +(a::Integer, b::Integer)
     @ int.jl:1038
 [281] +(c::BigInt, x::BigFloat)
     @ Base.MPFR mpfr.jl:431
 [282] +(dt::Dates.DateTime, y::Dates.Year)
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:23
 [283] +(dt::Dates.DateTime, z::Dates.Month)
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:47
 [284] +(x::Dates.DateTime, y::Dates.Quarter)
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:75
 [285] +(x::Dates.DateTime, y::Dates.Period)
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:81
 [286] +(x::Dates.TimeType)
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:8
 [287] +(x::Dates.AbstractTime, y::Missing)
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:88
 [288] +(a::Dates.TimeType, b::Dates.Period, c::Dates.Period)
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/periods.jl:353
 [289] +(a::Dates.TimeType, b::Dates.Period, c::Dates.Period, d::Dates.Period...)
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/periods.jl:354
 [290] +(x::Dates.TimeType, y::Dates.CompoundPeriod)
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/periods.jl:356
 [291] +(x::BFloat16s.BFloat16, y::BFloat16s.BFloat16)
     @ BFloat16s ~/.julia/packages/BFloat16s/uUmkF/src/bfloat16.jl:146
 [292] +(B::BitMatrix, J::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/uniformscaling.jl:151
 [293] +(A::AbstractMatrix, J::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/uniformscaling.jl:214
 [294] +(x::AbstractArray{<:Number})
     @ abstractarraymath.jl:220
 [295] +(::Missing)
     @ missing.jl:101
 [296] +(::Missing, ::Number)
     @ missing.jl:123
 [297] +(x::Missing, y::Dates.AbstractTime)
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:89
 [298] +(::Missing, ::Missing)
     @ missing.jl:122
 [299] +(a::Pkg.Resolve.VersionWeight, b::Pkg.Resolve.VersionWeight)
     @ Pkg.Resolve /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Pkg/src/Resolve/versionweights.jl:22
 [300] +(x::Dates.CompoundPeriod, y::Dates.Period)
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/periods.jl:332
 [301] +(x::Dates.CompoundPeriod, y::Dates.TimeType)
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/periods.jl:362
 [302] +(x::Dates.CompoundPeriod, y::Dates.CompoundPeriod)
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/periods.jl:334
 [303] +(level::Base.CoreLogging.LogLevel, inc::Integer)
     @ Base.CoreLogging logging.jl:131
 [304] +(self::TimerOutputs.TimeData, other::TimerOutputs.TimeData)
     @ TimerOutputs ~/.julia/packages/TimerOutputs/RsWnF/src/TimerOutput.jl:14
 [305] +(x::Rational{BigInt}, y::Rational{BigInt})
     @ Base.GMP.MPQ gmp.jl:1027
 [306] +(x::Rational)
     @ rational.jl:284
 [307] +(x::Real, z::Complex{Bool})
     @ complex.jl:316
 [308] +(x::Real, z::Complex)
     @ complex.jl:328
 [309] +(x::Number, y::Base.TwicePrecision)
     @ twiceprecision.jl:294
 [310] +(::Number, ::Missing)
     @ missing.jl:124
 [311] +(x::Number, J::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/uniformscaling.jl:145
 [312] +(a::Number, b::ColorTypes.AbstractGray)
     @ ColorVectorSpace ~/.julia/packages/ColorVectorSpace/tLy1N/src/ColorVectorSpace.jl:323
 [313] +(x::Rational, y::Rational)
     @ rational.jl:298
 [314] +(x::BigFloat, c::Union{UInt16, UInt32, UInt64, UInt8})
     @ Base.MPFR mpfr.jl:402
 [315] +(x::BigFloat, c::Union{Int16, Int32, Int64, Int8})
     @ Base.MPFR mpfr.jl:410
 [316] +(x::BigFloat, c::Union{Float16, Float32, Float64})
     @ Base.MPFR mpfr.jl:418
 [317] +(x::BigFloat, y::BigFloat)
     @ Base.MPFR mpfr.jl:395
 [318] +(x::BigFloat, c::BigInt)
     @ Base.MPFR mpfr.jl:426
 [319] +(a::BigFloat, b::BigFloat, c::BigFloat)
     @ Base.MPFR mpfr.jl:567
 [320] +(a::BigFloat, b::BigFloat, c::BigFloat, d::BigFloat)
     @ Base.MPFR mpfr.jl:573
 [321] +(a::BigFloat, b::BigFloat, c::BigFloat, d::BigFloat, e::BigFloat)
     @ Base.MPFR mpfr.jl:580
 [322] +(x::Number)
     @ operators.jl:515
 [323] +(x::T, y::T) where T<:Number
     @ promotion.jl:485
 [324] +(x::Number, y::Number)
     @ promotion.jl:410
 [325] +(a, b, c, xs...)
     @ operators.jl:578