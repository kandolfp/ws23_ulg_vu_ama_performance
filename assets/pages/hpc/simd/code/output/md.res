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
  [11] +(D::LinearAlgebra.Diagonal, S::LinearAlgebra.Symmetric)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/diagonal.jl:188
  [12] +(Da::LinearAlgebra.Diagonal, Db::LinearAlgebra.Diagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/diagonal.jl:184
  [13] +(x::LinearAlgebra.Diagonal, H::LinearAlgebra.UpperHessenberg)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:112
  [14] +(lhs::LinearAlgebra.Diagonal, rhs::CUDA.CUSPARSE.CuSparseMatrixCOO{T}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:502
  [15] +(lhs::LinearAlgebra.Diagonal, rhs::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCOO{T}}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:502
  [16] +(lhs::LinearAlgebra.Diagonal, rhs::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:502
  [17] +(lhs::LinearAlgebra.Diagonal, rhs::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:502
  [18] +(lhs::LinearAlgebra.Diagonal, rhs::CUDA.CUSPARSE.CuSparseMatrixCSR{T}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:502
  [19] +(D::LinearAlgebra.Diagonal{var"#s972", V} where {var"#s972"<:Real, V<:AbstractVector{var"#s972"}}, H::LinearAlgebra.Hermitian)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/diagonal.jl:194
  [20] +(lhs::LinearAlgebra.Diagonal, rhs::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:502
  [21] +(lhs::LinearAlgebra.Diagonal, rhs::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:502
  [22] +(lhs::LinearAlgebra.Diagonal, rhs::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCOO{T}}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:502
  [23] +(A::LinearAlgebra.Diagonal, B::LinearAlgebra.Tridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:168
  [24] +(lhs::LinearAlgebra.Diagonal, rhs::CUDA.CUSPARSE.CuSparseMatrixCSC{T}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:502
  [25] +(A::LinearAlgebra.Diagonal, B::LinearAlgebra.Bidiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:130
  [26] +(A::LinearAlgebra.Diagonal, B::LinearAlgebra.SymTridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:140
  [27] +(A::LinearAlgebra.Diagonal{var"#s972", V} where {var"#s972"<:Number, V<:AbstractVector{var"#s972"}}, B::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:246
  [28] +(x::Base.TwicePrecision, y::Number)
     @ twiceprecision.jl:290
  [29] +(x::Base.TwicePrecision{T}, y::Base.TwicePrecision{T}) where T
     @ twiceprecision.jl:296
  [30] +(x::Base.TwicePrecision, y::Base.TwicePrecision)
     @ twiceprecision.jl:301
  [31] +(A::CUDA.CUSPARSE.CuSparseVector{T}, B::CUDA.CUSPARSE.CuSparseVector{T}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:202
  [32] +(x::P, y::P) where P<:Dates.Period
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/periods.jl:75
  [33] +(x::Dates.Period, y::Dates.Period)
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/periods.jl:331
  [34] +(y::Dates.Period, x::Dates.CompoundPeriod)
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/periods.jl:333
  [35] +(y::Dates.Period, x::Dates.TimeType)
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:85
  [36] +(x::Dates.Period, r::AbstractRange{<:Dates.TimeType})
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/ranges.jl:64
  [37] +(y::Union{Dates.CompoundPeriod, Dates.Period}, x::AbstractArray{<:Dates.TimeType})
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/deprecated.jl:14
  [38] +(x::Dates.Instant)
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:4
  [39] +(r1::StepRangeLen{T, R}, r2::StepRangeLen{T, R}) where {R<:Base.TwicePrecision, T}
     @ twiceprecision.jl:628
  [40] +(r1::StepRangeLen{T, S}, r2::StepRangeLen{T, S}) where {T, S}
     @ range.jl:1464
  [41] +(A::SparseArrays.AbstractSparseMatrixCSC, B::SparseArrays.AbstractSparseMatrixCSC)
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/SparseArrays/src/sparsematrix.jl:2065
  [42] +(A::SparseArrays.AbstractSparseMatrixCSC, B::Array)
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/SparseArrays/src/sparsematrix.jl:2068
  [43] +(A::SparseArrays.AbstractSparseMatrixCSC{Tv, Ti}, J::LinearAlgebra.UniformScaling{T}) where {T<:Number, Tv, Ti}
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/SparseArrays/src/sparsematrix.jl:4098
  [44] +(a::ColorVectorSpace.RGBRGB)
     @ ColorVectorSpace ~/.julia/packages/ColorVectorSpace/tLy1N/src/ColorVectorSpace.jl:411
  [45] +(a::ColorVectorSpace.RGBRGB, b::ColorVectorSpace.RGBRGB)
     @ ColorVectorSpace ~/.julia/packages/ColorVectorSpace/tLy1N/src/ColorVectorSpace.jl:413
  [46] +(r1::OrdinalRange, r2::OrdinalRange)
     @ range.jl:1441
  [47] +(lhs::CUDA.CUSPARSE.CuSparseMatrixCOO{T}, rhs::LinearAlgebra.Diagonal) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:505
  [48] +(A::CUDA.CUSPARSE.CuSparseMatrixCOO{T}, J::LinearAlgebra.UniformScaling) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:475
  [49] +(x::Core.LLVMPtr, y::Integer)
     @ LLVM.Interop ~/.julia/packages/LLVM/vIbji/src/interop/pointer.jl:114
  [50] +(x::CUDA.CuArrayPtr, y::Integer)
     @ CUDA ~/.julia/packages/CUDA/nbRJk/src/pointer.jl:185
  [51] +(A::LinearAlgebra.Hermitian, B::LinearAlgebra.Hermitian)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/symmetric.jl:469
  [52] +(A::LinearAlgebra.Hermitian, B::LinearAlgebra.SymTridiagonal{var"#s969", V} where {var"#s969"<:Real, V<:AbstractVector{var"#s969"}})
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/symmetric.jl:488
  [53] +(H::LinearAlgebra.Hermitian, D::LinearAlgebra.Diagonal{var"#s972", V} where {var"#s972"<:Real, V<:AbstractVector{var"#s972"}})
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/diagonal.jl:197
  [54] +(A::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::SparseArrays.AbstractSparseMatrix)
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:15
  [55] +(A::LinearAlgebra.Hermitian, B::SparseArrays.AbstractSparseMatrix)
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:18
  [56] +(A::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Symmetric{<:Real, <:SparseArrays.AbstractSparseMatrix})
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:26
  [57] +(A::LinearAlgebra.Hermitian, B::LinearAlgebra.Symmetric{var"#s972", S} where {var"#s972"<:Real, S<:(AbstractMatrix{<:var"#s972"})})
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/symmetric.jl:483
  [58] +(A::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix})
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:24
  [59] +(A::LinearAlgebra.Hermitian{T, <:GPUArraysCore.AbstractGPUMatrix}, J::LinearAlgebra.UniformScaling{<:Complex}) where T
     @ GPUArrays ~/.julia/packages/GPUArrays/dAUOE/src/host/uniformscaling.jl:72
  [60] +(A::LinearAlgebra.Hermitian, J::LinearAlgebra.UniformScaling{<:Complex})
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/uniformscaling.jl:195
  [61] +(A::LinearAlgebra.Hermitian{T, <:GPUArraysCore.AbstractGPUMatrix}, J::LinearAlgebra.UniformScaling) where T
     @ GPUArrays ~/.julia/packages/GPUArrays/dAUOE/src/host/uniformscaling.jl:53
  [62] +(x::CUDA.CuPtr, y::Integer)
     @ CUDA ~/.julia/packages/CUDA/nbRJk/src/pointer.jl:76
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
  [68] +(A::LinearAlgebra.UpperTriangular, B::LinearAlgebra.UpperTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/triangular.jl:642
  [69] +(A::LinearAlgebra.UpperTriangular, B::LinearAlgebra.UnitUpperTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/triangular.jl:644
  [70] +(x::LinearAlgebra.UpperTriangular, H::LinearAlgebra.UpperHessenberg)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:112
  [71] +(A::LinearAlgebra.UpperTriangular, B::LinearAlgebra.Bidiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:91
  [72] +(A::LinearAlgebra.UpperTriangular{T, <:GPUArraysCore.AbstractGPUMatrix}, J::LinearAlgebra.UniformScaling) where T
     @ GPUArrays ~/.julia/packages/GPUArrays/dAUOE/src/host/uniformscaling.jl:53
  [73] +(A::LinearAlgebra.Tridiagonal, B::LinearAlgebra.Tridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/tridiag.jl:754
  [74] +(x::LinearAlgebra.Tridiagonal, H::LinearAlgebra.UpperHessenberg)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:112
  [75] +(A::LinearAlgebra.Tridiagonal, B::LinearAlgebra.SymTridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:162
  [76] +(A::LinearAlgebra.Tridiagonal, B::LinearAlgebra.Diagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:178
  [77] +(A::LinearAlgebra.Tridiagonal, B::LinearAlgebra.Bidiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:198
  [78] +(A::LinearAlgebra.Tridiagonal{var"#s972", V} where {var"#s972"<:Number, V<:AbstractVector{var"#s972"}}, B::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:231
  [79] +(x::Ptr, y::Integer)
     @ pointer.jl:167
  [80] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.SymTridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/tridiag.jl:207
  [81] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.Symmetric)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/symmetric.jl:485
  [82] +(A::LinearAlgebra.SymTridiagonal{var"#s970", V} where {var"#s970"<:Real, V<:AbstractVector{var"#s970"}}, B::LinearAlgebra.Hermitian)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/symmetric.jl:487
  [83] +(x::LinearAlgebra.SymTridiagonal, H::LinearAlgebra.UpperHessenberg)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:112
  [84] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.Diagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:150
  [85] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.Tridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:164
  [86] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.Bidiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:218
  [87] +(A::LinearAlgebra.SymTridiagonal{var"#s972", V} where {var"#s972"<:Number, V<:AbstractVector{var"#s972"}}, B::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:236
  [88] +(r::AbstractRange{<:Dates.TimeType}, x::Dates.Period)
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/ranges.jl:65
  [89] +(A::LinearAlgebra.UnitUpperTriangular, B::LinearAlgebra.UpperTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/triangular.jl:646
  [90] +(A::LinearAlgebra.UnitUpperTriangular, B::LinearAlgebra.UnitUpperTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/triangular.jl:648
  [91] +(x::LinearAlgebra.UnitUpperTriangular, H::LinearAlgebra.UpperHessenberg)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:112
  [92] +(A::LinearAlgebra.UnitUpperTriangular, B::LinearAlgebra.Bidiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:91
  [93] +(A::LinearAlgebra.UnitUpperTriangular{T, <:GPUArraysCore.AbstractGPUMatrix}, J::LinearAlgebra.UniformScaling) where T
     @ GPUArrays ~/.julia/packages/GPUArrays/dAUOE/src/host/uniformscaling.jl:33
  [94] +(UL::LinearAlgebra.UnitUpperTriangular, J::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/uniformscaling.jl:181
  [95] +(a::ColorTypes.AbstractRGB, b::ColorTypes.AbstractRGB)
     @ ColorVectorSpace ~/.julia/packages/ColorVectorSpace/tLy1N/src/ColorVectorSpace.jl:272
  [96] +(A::Array, Bs::Array...)
     @ arraymath.jl:12
  [97] +(A::Array, B::SparseArrays.AbstractSparseMatrixCSC)
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/SparseArrays/src/sparsematrix.jl:2069
  [98] +(r1::LinRange{T}, r2::LinRange{T}) where T
     @ range.jl:1448
  [99] +(r1::Union{LinRange, OrdinalRange, StepRangeLen}, r2::Union{LinRange, OrdinalRange, StepRangeLen})
     @ range.jl:1457
 [100] +(y::Dates.TimeType, x::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}})
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/deprecated.jl:18
 [101] +(x::AbstractIrrational, y::AbstractIrrational)
     @ irrationals.jl:161
 [102] +(lhs::CUDA.CUSPARSE.CuSparseMatrixCSC{T}, rhs::LinearAlgebra.Diagonal) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:505
 [103] +(A::CUDA.CUSPARSE.CuSparseMatrixCSC{T}, J::LinearAlgebra.UniformScaling) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:475
 [104] +(A::CUDA.CUSPARSE.CuSparseMatrixCSC{T}, B::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [105] +(A::CUDA.CUSPARSE.CuSparseMatrixCSC{T}, B::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [106] +(A::CUDA.CUSPARSE.CuSparseMatrixCSC{T}, B::CUDA.CUSPARSE.CuSparseMatrixCSC{T}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [107] +(A::CUDA.CuArray{T, 2}, B::LinearAlgebra.Adjoint{T, <:CUDA.CuArray{T, 2}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUBLAS ~/.julia/packages/CUDA/nbRJk/lib/cublas/linalg.jl:675
 [108] +(A::CUDA.CuArray{T, 2}, B::LinearAlgebra.Transpose{T, <:CUDA.CuArray{T, 2}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUBLAS ~/.julia/packages/CUDA/nbRJk/lib/cublas/linalg.jl:675
 [109] +(A::CUDA.CuArray{T, 2}, B::CUDA.CuArray{T, 2}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUBLAS ~/.julia/packages/CUDA/nbRJk/lib/cublas/linalg.jl:675
 [110] +(X::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}}, Y::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}})
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/deprecated.jl:62
 [111] +(A::LinearAlgebra.UnitLowerTriangular, B::LinearAlgebra.LowerTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/triangular.jl:647
 [112] +(A::LinearAlgebra.UnitLowerTriangular, B::LinearAlgebra.UnitLowerTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/triangular.jl:649
 [113] +(A::LinearAlgebra.UnitLowerTriangular, B::LinearAlgebra.Bidiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:91
 [114] +(A::LinearAlgebra.UnitLowerTriangular{T, <:GPUArraysCore.AbstractGPUMatrix}, J::LinearAlgebra.UniformScaling) where T
     @ GPUArrays ~/.julia/packages/GPUArrays/dAUOE/src/host/uniformscaling.jl:33
 [115] +(UL::LinearAlgebra.UnitLowerTriangular, J::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/uniformscaling.jl:181
 [116] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix})
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:14
 [117] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Hermitian)
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:17
 [118] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix})
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:14
 [119] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Symmetric)
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:17
 [120] +(a::Measures.Length{U}, b::Measures.Length{U}) where U
     @ Measures ~/.julia/packages/Measures/PKOxJ/src/length.jl:31
 [121] +(a::CEnum.Cenum{T}, b::S) where {T<:Integer, S<:Integer}
     @ CEnum ~/.julia/packages/CEnum/Bqafi/src/operators.jl:9
 [122] +(a::CEnum.Cenum{T}, b::CEnum.Cenum{S}) where {T<:Integer, S<:Integer}
     @ CEnum ~/.julia/packages/CEnum/Bqafi/src/operators.jl:5
 [123] +(x::T, y::Integer) where T<:AbstractChar
     @ char.jl:237
 [124] +(A::LinearAlgebra.Adjoint{T, <:CUDA.CuArray{T, 2}}, B::LinearAlgebra.Transpose{T, <:CUDA.CuArray{T, 2}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUBLAS ~/.julia/packages/CUDA/nbRJk/lib/cublas/linalg.jl:675
 [125] +(A::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}, B::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [126] +(A::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}, B::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [127] +(lhs::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}, rhs::LinearAlgebra.Diagonal) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:505
 [128] +(lhs::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}, rhs::LinearAlgebra.Diagonal) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:505
 [129] +(lhs::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCOO{T}}, rhs::LinearAlgebra.Diagonal) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:505
 [130] +(A::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}, B::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [131] +(A::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}, B::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [132] +(A::LinearAlgebra.Adjoint{T, <:CUDA.CuArray{T, 2}}, B::LinearAlgebra.Adjoint{T, <:CUDA.CuArray{T, 2}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUBLAS ~/.julia/packages/CUDA/nbRJk/lib/cublas/linalg.jl:675
 [133] +(A::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}, B::CUDA.CUSPARSE.CuSparseMatrixCSC{T}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [134] +(A::LinearAlgebra.Adjoint{T, <:CUDA.CuArray{T, 2}}, B::CUDA.CuArray{T, 2}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUBLAS ~/.julia/packages/CUDA/nbRJk/lib/cublas/linalg.jl:675
 [135] +(A::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCOO{T}}, J::LinearAlgebra.UniformScaling) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:475
 [136] +(A::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}, J::LinearAlgebra.UniformScaling) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:475
 [137] +(A::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}, J::LinearAlgebra.UniformScaling) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:475
 [138] +(A::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}, B::CUDA.CUSPARSE.CuSparseMatrixCSR{T}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [139] +(a::SentinelArrays.ChainedVectorIndex, b::SentinelArrays.ChainedVectorIndex)
     @ SentinelArrays ~/.julia/packages/SentinelArrays/1kRo4/src/chainedvector.jl:209
 [140] +(a::SentinelArrays.ChainedVectorIndex, b::Integer)
     @ SentinelArrays ~/.julia/packages/SentinelArrays/1kRo4/src/chainedvector.jl:207
 [141] +(a::Measures.Measure, b::Measures.Measure)
     @ Measures ~/.julia/packages/Measures/PKOxJ/src/operations.jl:41
 [142] +(y::AbstractFloat, x::Bool)
     @ bool.jl:176
 [143] +(A::GPUArraysCore.AbstractGPUMatrix{T}, J::LinearAlgebra.UniformScaling) where T
     @ GPUArrays ~/.julia/packages/GPUArrays/dAUOE/src/host/uniformscaling.jl:89
 [144] +(x::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}})
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/deprecated.jl:55
 [145] +(x::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}}, y::Dates.TimeType)
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/deprecated.jl:10
 [146] +(a::StaticArraysCore.StaticArray{Tuple{N, M}, T, 2} where {N, M, T}, b::LinearAlgebra.UniformScaling)
     @ StaticArrays ~/.julia/packages/StaticArrays/cZ1ET/src/linalg.jl:29
 [147] +(a::StaticArraysCore.StaticArray)
     @ StaticArrays ~/.julia/packages/StaticArrays/cZ1ET/src/linalg.jl:7
 [148] +(x::AbstractArray{<:Dates.TimeType}, y::Union{Dates.CompoundPeriod, Dates.Period})
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/deprecated.jl:6
 [149] +(a::StaticArraysCore.StaticArray, b::StaticArraysCore.StaticArray)
     @ StaticArrays ~/.julia/packages/StaticArrays/cZ1ET/src/linalg.jl:12
 [150] +(a::AbstractArray, b::StaticArraysCore.StaticArray)
     @ StaticArrays ~/.julia/packages/StaticArrays/cZ1ET/src/linalg.jl:13
 [151] +(a::StaticArraysCore.StaticArray, b::AbstractArray)
     @ StaticArrays ~/.julia/packages/StaticArrays/cZ1ET/src/linalg.jl:14
 [152] +(A::LinearAlgebra.Symmetric, B::LinearAlgebra.Symmetric)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/symmetric.jl:469
 [153] +(A::LinearAlgebra.Symmetric, B::LinearAlgebra.SymTridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/symmetric.jl:486
 [154] +(S::LinearAlgebra.Symmetric, D::LinearAlgebra.Diagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/diagonal.jl:191
 [155] +(A::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::SparseArrays.AbstractSparseMatrix)
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:15
 [156] +(A::LinearAlgebra.Symmetric, B::SparseArrays.AbstractSparseMatrix)
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:18
 [157] +(A::LinearAlgebra.Symmetric{<:Real, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix})
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:25
 [158] +(A::LinearAlgebra.Symmetric{var"#s971", S} where {var"#s971"<:Real, S<:(AbstractMatrix{<:var"#s971"})}, B::LinearAlgebra.Hermitian)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/symmetric.jl:484
 [159] +(A::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix})
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:23
 [160] +(A::LinearAlgebra.Symmetric{T, <:GPUArraysCore.AbstractGPUMatrix}, J::LinearAlgebra.UniformScaling) where T
     @ GPUArrays ~/.julia/packages/GPUArrays/dAUOE/src/host/uniformscaling.jl:53
 [161] +(a::Tuple{Vararg{Measures.Measure, N}}, b::Tuple{Vararg{Measures.Measure, N}}) where N
     @ Measures ~/.julia/packages/Measures/PKOxJ/src/point.jl:21
 [162] +(a::Tuple{Vararg{Measures.Measure, N}} where N, b::Tuple{Vararg{Measures.Measure, N}} where N)
     @ Measures ~/.julia/packages/Measures/PKOxJ/src/point.jl:15
 [163] +(x::X, y::X) where X<:FixedPointNumbers.FixedPoint
     @ FixedPointNumbers ~/.julia/packages/FixedPointNumbers/HAGk2/src/FixedPointNumbers.jl:237
 [164] +(lhs::CUDA.CUSPARSE.CuSparseMatrixCSR{T}, rhs::LinearAlgebra.Diagonal) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:505
 [165] +(A::CUDA.CUSPARSE.CuSparseMatrixCSR{T}, J::LinearAlgebra.UniformScaling) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:475
 [166] +(A::CUDA.CUSPARSE.CuSparseMatrixCSR{T}, B::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [167] +(A::CUDA.CUSPARSE.CuSparseMatrixCSR{T}, B::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [168] +(A::CUDA.CUSPARSE.CuSparseMatrixCSR{T}, B::CUDA.CUSPARSE.CuSparseMatrixCSR{T}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [169] +(x::SparseArrays.AbstractSparseVector, y::SparseArrays.AbstractSparseVector)
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/SparseArrays/src/sparsevector.jl:1516
 [170] +(a::ColorTypes.TransparentGray, b::ColorTypes.TransparentGray)
     @ ColorVectorSpace ~/.julia/packages/ColorVectorSpace/tLy1N/src/ColorVectorSpace.jl:312
 [171] +(a::ColorTypes.TransparentColor{C, T, 4} where {C<:ColorTypes.AbstractRGB, T}, b::ColorTypes.TransparentColor{C, T, 4} where {C<:ColorTypes.AbstractRGB, T})
     @ ColorVectorSpace ~/.julia/packages/ColorVectorSpace/tLy1N/src/ColorVectorSpace.jl:274
 [172] +(c::Union{ColorTypes.TransparentColor{C, Bool}, C} where C<:Union{ColorTypes.AbstractRGB{Bool}, ColorTypes.AbstractGray{Bool}})
     @ ColorVectorSpace ~/.julia/packages/ColorVectorSpace/tLy1N/src/ColorVectorSpace.jl:250
 [173] +(z::Complex, w::Complex)
     @ complex.jl:291
 [174] +(A::LinearAlgebra.Transpose{T, <:CUDA.CuArray{T, 2}}, B::LinearAlgebra.Transpose{T, <:CUDA.CuArray{T, 2}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUBLAS ~/.julia/packages/CUDA/nbRJk/lib/cublas/linalg.jl:675
 [175] +(A::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}, B::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [176] +(A::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}, B::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [177] +(lhs::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}, rhs::LinearAlgebra.Diagonal) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:505
 [178] +(lhs::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}, rhs::LinearAlgebra.Diagonal) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:505
 [179] +(lhs::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCOO{T}}, rhs::LinearAlgebra.Diagonal) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:505
 [180] +(A::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}, B::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [181] +(A::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}, B::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [182] +(A::LinearAlgebra.Transpose{T, <:CUDA.CuArray{T, 2}}, B::LinearAlgebra.Adjoint{T, <:CUDA.CuArray{T, 2}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUBLAS ~/.julia/packages/CUDA/nbRJk/lib/cublas/linalg.jl:675
 [183] +(A::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}, B::CUDA.CUSPARSE.CuSparseMatrixCSC{T}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [184] +(A::LinearAlgebra.Transpose{T, <:CUDA.CuArray{T, 2}}, B::CUDA.CuArray{T, 2}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUBLAS ~/.julia/packages/CUDA/nbRJk/lib/cublas/linalg.jl:675
 [185] +(A::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCOO{T}}, J::LinearAlgebra.UniformScaling) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:475
 [186] +(A::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}, J::LinearAlgebra.UniformScaling) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:475
 [187] +(A::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}, J::LinearAlgebra.UniformScaling) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:475
 [188] +(A::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}, B::CUDA.CUSPARSE.CuSparseMatrixCSR{T}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [189] +(J::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/uniformscaling.jl:149
 [190] +(J::LinearAlgebra.UniformScaling{T}, A::SparseArrays.AbstractSparseMatrixCSC{Tv, Ti}) where {T<:Number, Tv, Ti}
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/SparseArrays/src/sparsematrix.jl:4100
 [191] +(x::LinearAlgebra.UniformScaling, H::LinearAlgebra.UpperHessenberg)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:112
 [192] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.Diagonal{var"#s972", V} where {var"#s972"<:Number, V<:AbstractVector{var"#s972"}})
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:265
 [193] +(J::LinearAlgebra.UniformScaling, F::LinearAlgebra.Hessenberg)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:648
 [194] +(J::LinearAlgebra.UniformScaling, A::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCOO{T}}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:476
 [195] +(J::LinearAlgebra.UniformScaling, A::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:476
 [196] +(J::LinearAlgebra.UniformScaling, A::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:476
 [197] +(J::LinearAlgebra.UniformScaling, A::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCOO{T}}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:476
 [198] +(J::LinearAlgebra.UniformScaling, A::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:476
 [199] +(J::LinearAlgebra.UniformScaling, A::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:476
 [200] +(J::LinearAlgebra.UniformScaling, A::CUDA.CUSPARSE.CuSparseMatrixCSR{T}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:476
 [201] +(J::LinearAlgebra.UniformScaling, A::CUDA.CUSPARSE.CuSparseMatrixCOO{T}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:476
 [202] +(J::LinearAlgebra.UniformScaling, A::CUDA.CUSPARSE.CuSparseMatrixCSC{T}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:476
 [203] +(J::LinearAlgebra.UniformScaling, x::Number)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/uniformscaling.jl:144
 [204] +(J1::LinearAlgebra.UniformScaling, J2::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/uniformscaling.jl:150
 [205] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.Tridiagonal{var"#s972", V} where {var"#s972"<:Number, V<:AbstractVector{var"#s972"}})
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:250
 [206] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.SymTridiagonal{var"#s972", V} where {var"#s972"<:Number, V<:AbstractVector{var"#s972"}})
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:255
 [207] +(a::LinearAlgebra.UniformScaling, b::StaticArraysCore.StaticArray{Tuple{N, M}, T, 2} where {N, M, T})
     @ StaticArrays ~/.julia/packages/StaticArrays/cZ1ET/src/linalg.jl:30
 [208] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.Bidiagonal{var"#s972", V} where {var"#s972"<:Number, V<:AbstractVector{var"#s972"}})
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:260
 [209] +(J::LinearAlgebra.UniformScaling, B::BitMatrix)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/uniformscaling.jl:152
 [210] +(J::LinearAlgebra.UniformScaling, A::AbstractMatrix)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/uniformscaling.jl:153
 [211] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.Bidiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/bidiag.jl:374
 [212] +(x::LinearAlgebra.Bidiagonal, H::LinearAlgebra.UpperHessenberg)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:112
 [213] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.UpperTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:99
 [214] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.UnitUpperTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:99
 [215] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.LowerTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:99
 [216] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.UnitLowerTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:99
 [217] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.Diagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:120
 [218] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.Tridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:188
 [219] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.SymTridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:208
 [220] +(A::LinearAlgebra.Bidiagonal{var"#s972", V} where {var"#s972"<:Number, V<:AbstractVector{var"#s972"}}, B::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:241
 [221] +(p::SpecialFunctions.SimplePoly{S}, q::SpecialFunctions.SimplePoly{T}) where {S, T}
     @ SpecialFunctions ~/.julia/packages/SpecialFunctions/QH8rV/src/expint.jl:11
 [222] +(A::LinearAlgebra.UpperHessenberg, B::LinearAlgebra.UpperHessenberg)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:104
 [223] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:111
 [224] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.Diagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:111
 [225] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.Bidiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:111
 [226] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.Tridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:111
 [227] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.SymTridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:111
 [228] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.UpperTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:111
 [229] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.UnitUpperTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:111
 [230] +(A::BitArray, B::BitArray)
     @ bitarray.jl:1184
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
 [238] +(index1::CartesianIndex{N}, index2::CartesianIndex{N}) where N
     @ Base.IteratorsMD multidimensional.jl:111
 [239] +(A::LinearAlgebra.AbstractTriangular, B::LinearAlgebra.AbstractTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/triangular.jl:650
 [240] +(A::AbstractArray, B::AbstractArray)
     @ arraymath.jl:6
 [241] +(bb1::Measures.BoundingBox, bb2::Measures.BoundingBox)
     @ Plots ~/.julia/packages/Plots/sxUvK/src/layouts.jl:21
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
 [258] +(a::Pkg.Resolve.FieldValue, b::Pkg.Resolve.FieldValue)
     @ Pkg.Resolve /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Pkg/src/Resolve/fieldvalues.jl:43
 [259] +(z::Complex{Bool}, x::Bool)
     @ complex.jl:303
 [260] +(z::Complex, x::Bool)
     @ complex.jl:310
 [261] +(z::Complex{Bool}, x::Real)
     @ complex.jl:317
 [262] +(z::Complex)
     @ complex.jl:289
 [263] +(z::Complex, x::Real)
     @ complex.jl:329
 [264] +(dt::Dates.Date, t::Dates.Time)
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:19
 [265] +(dt::Dates.Date, y::Dates.Year)
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:27
 [266] +(dt::Dates.Date, z::Dates.Month)
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:54
 [267] +(x::Dates.Date, y::Dates.Quarter)
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:73
 [268] +(x::Dates.Date, y::Dates.Week)
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:77
 [269] +(x::Dates.Date, y::Dates.Day)
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:79
 [270] +(x::BigInt, c::Union{UInt16, UInt32, UInt64, UInt8})
     @ Base.GMP gmp.jl:538
 [271] +(x::BigInt, c::Union{Int16, Int32, Int64, Int8})
     @ Base.GMP gmp.jl:544
 [272] +(x::BigInt, y::BigInt)
     @ Base.GMP gmp.jl:490
 [273] +(a::BigInt, b::BigInt, c::BigInt)
     @ Base.GMP gmp.jl:530
 [274] +(a::BigInt, b::BigInt, c::BigInt, d::BigInt)
     @ Base.GMP gmp.jl:531
 [275] +(a::BigInt, b::BigInt, c::BigInt, d::BigInt, e::BigInt)
     @ Base.GMP gmp.jl:532
 [276] +(x::BigInt, y::BigInt, rest::BigInt...)
     @ Base.GMP gmp.jl:666
 [277] +(a::Integer, b::Integer)
     @ int.jl:1038
 [278] +(c::BigInt, x::BigFloat)
     @ Base.MPFR mpfr.jl:431
 [279] +(dt::Dates.DateTime, y::Dates.Year)
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:23
 [280] +(dt::Dates.DateTime, z::Dates.Month)
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:47
 [281] +(x::Dates.DateTime, y::Dates.Quarter)
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:75
 [282] +(x::Dates.DateTime, y::Dates.Period)
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:81
 [283] +(x::Dates.TimeType)
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:8
 [284] +(x::Dates.AbstractTime, y::Missing)
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:88
 [285] +(a::Dates.TimeType, b::Dates.Period, c::Dates.Period)
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/periods.jl:353
 [286] +(a::Dates.TimeType, b::Dates.Period, c::Dates.Period, d::Dates.Period...)
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/periods.jl:354
 [287] +(x::Dates.TimeType, y::Dates.CompoundPeriod)
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/periods.jl:356
 [288] +(a::OpenSSL.BigNum, b::OpenSSL.BigNum)
     @ OpenSSL ~/.julia/packages/OpenSSL/8wxMC/src/OpenSSL.jl:747
 [289] +(B::BitMatrix, J::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/uniformscaling.jl:151
 [290] +(A::AbstractMatrix, J::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/uniformscaling.jl:214
 [291] +(x::AbstractArray{<:Number})
     @ abstractarraymath.jl:220
 [292] +(::Missing)
     @ missing.jl:101
 [293] +(::Missing, ::Number)
     @ missing.jl:123
 [294] +(x::Missing, y::Dates.AbstractTime)
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:89
 [295] +(::Missing, ::Missing)
     @ missing.jl:122
 [296] +(self::TimerOutputs.TimeData, other::TimerOutputs.TimeData)
     @ TimerOutputs ~/.julia/packages/TimerOutputs/RsWnF/src/TimerOutput.jl:14
 [297] +(a::Pkg.Resolve.VersionWeight, b::Pkg.Resolve.VersionWeight)
     @ Pkg.Resolve /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Pkg/src/Resolve/versionweights.jl:22
 [298] +(x::Dates.CompoundPeriod, y::Dates.Period)
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/periods.jl:332
 [299] +(x::Dates.CompoundPeriod, y::Dates.TimeType)
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/periods.jl:362
 [300] +(x::Dates.CompoundPeriod, y::Dates.CompoundPeriod)
     @ Dates /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/Dates/src/periods.jl:334
 [301] +(level::Base.CoreLogging.LogLevel, inc::Integer)
     @ Base.CoreLogging logging.jl:131
 [302] +(x::Rational{BigInt}, y::Rational{BigInt})
     @ Base.GMP.MPQ gmp.jl:1027
 [303] +(x::Rational)
     @ rational.jl:284
 [304] +(x::Real, z::Complex{Bool})
     @ complex.jl:316
 [305] +(x::Real, z::Complex)
     @ complex.jl:328
 [306] +(x::Number, y::Base.TwicePrecision)
     @ twiceprecision.jl:294
 [307] +(::Number, ::Missing)
     @ missing.jl:124
 [308] +(x::Number, J::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.4/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/uniformscaling.jl:145
 [309] +(a::Number, b::ColorTypes.AbstractGray)
     @ ColorVectorSpace ~/.julia/packages/ColorVectorSpace/tLy1N/src/ColorVectorSpace.jl:323
 [310] +(x::Rational, y::Rational)
     @ rational.jl:298
 [311] +(a::Random123.__m128i, b::Integer)
     @ Random123 ~/.julia/packages/Random123/u5oEp/src/aesni_common.jl:35
 [312] +(a::Random123.__m128i, b::Random123.__m128i)
     @ Random123 ~/.julia/packages/Random123/u5oEp/src/aesni_common.jl:29
 [313] +(x::BigFloat, c::Union{UInt16, UInt32, UInt64, UInt8})
     @ Base.MPFR mpfr.jl:402
 [314] +(x::BigFloat, c::Union{Int16, Int32, Int64, Int8})
     @ Base.MPFR mpfr.jl:410
 [315] +(x::BigFloat, c::Union{Float16, Float32, Float64})
     @ Base.MPFR mpfr.jl:418
 [316] +(x::BigFloat, y::BigFloat)
     @ Base.MPFR mpfr.jl:395
 [317] +(x::BigFloat, c::BigInt)
     @ Base.MPFR mpfr.jl:426
 [318] +(a::BigFloat, b::BigFloat, c::BigFloat)
     @ Base.MPFR mpfr.jl:567
 [319] +(a::BigFloat, b::BigFloat, c::BigFloat, d::BigFloat)
     @ Base.MPFR mpfr.jl:573
 [320] +(a::BigFloat, b::BigFloat, c::BigFloat, d::BigFloat, e::BigFloat)
     @ Base.MPFR mpfr.jl:580
 [321] +(x::BFloat16s.BFloat16, y::BFloat16s.BFloat16)
     @ BFloat16s ~/.julia/packages/BFloat16s/uUmkF/src/bfloat16.jl:146
 [322] +(x::Number)
     @ operators.jl:515
 [323] +(x::T, y::T) where T<:Number
     @ promotion.jl:485
 [324] +(x::Number, y::Number)
     @ promotion.jl:410
 [325] +(a, b, c, xs...)
     @ operators.jl:578