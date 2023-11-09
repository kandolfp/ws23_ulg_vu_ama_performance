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
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/periods.jl:342
   [9] +(a::Union{ColorTypes.LMS, ColorTypes.XYZ}, b::Union{ColorTypes.LMS, ColorTypes.XYZ})
     @ Colors ~/.julia/packages/Colors/mIuXl/src/algorithms.jl:4
  [10] +(A::Union{CUDA.CUSPARSE.CuSparseMatrixCOO{T}, LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCOO}, LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCOO}}, B::Union{CUDA.CUSPARSE.CuSparseMatrixCOO{T}, LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCOO}, LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCOO}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:204
  [11] +(y::Dates.TimeType, x::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}})
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/deprecated.jl:18
  [12] +(x::CUDA.CuPtr, y::Integer)
     @ CUDA ~/.julia/packages/CUDA/nbRJk/src/pointer.jl:76
  [13] +(r::AbstractRange{<:Dates.TimeType}, x::Dates.Period)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/ranges.jl:65
  [14] +(A::LinearAlgebra.Tridiagonal, B::LinearAlgebra.Tridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/tridiag.jl:754
  [15] +(x::LinearAlgebra.Tridiagonal, H::LinearAlgebra.UpperHessenberg)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:112
  [16] +(A::LinearAlgebra.Tridiagonal, B::LinearAlgebra.SymTridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:162
  [17] +(A::LinearAlgebra.Tridiagonal, B::LinearAlgebra.Diagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:178
  [18] +(A::LinearAlgebra.Tridiagonal, B::LinearAlgebra.Bidiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:198
  [19] +(A::LinearAlgebra.Tridiagonal{var"#s972", V} where {var"#s972"<:Number, V<:AbstractVector{var"#s972"}}, B::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:231
  [20] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix})
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:14
  [21] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Hermitian)
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:17
  [22] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix})
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:14
  [23] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Symmetric)
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:17
  [24] +(A::LinearAlgebra.UnitLowerTriangular, B::LinearAlgebra.LowerTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/triangular.jl:647
  [25] +(A::LinearAlgebra.UnitLowerTriangular, B::LinearAlgebra.UnitLowerTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/triangular.jl:649
  [26] +(A::LinearAlgebra.UnitLowerTriangular, B::LinearAlgebra.Bidiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:91
  [27] +(A::LinearAlgebra.UnitLowerTriangular{T, <:GPUArraysCore.AbstractGPUMatrix}, J::LinearAlgebra.UniformScaling) where T
     @ GPUArrays ~/.julia/packages/GPUArrays/dAUOE/src/host/uniformscaling.jl:33
  [28] +(UL::LinearAlgebra.UnitLowerTriangular, J::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/uniformscaling.jl:181
  [29] +(a::CEnum.Cenum{T}, b::S) where {T<:Integer, S<:Integer}
     @ CEnum ~/.julia/packages/CEnum/Bqafi/src/operators.jl:9
  [30] +(a::CEnum.Cenum{T}, b::CEnum.Cenum{S}) where {T<:Integer, S<:Integer}
     @ CEnum ~/.julia/packages/CEnum/Bqafi/src/operators.jl:5
  [31] +(A::LinearAlgebra.UpperTriangular, B::LinearAlgebra.UpperTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/triangular.jl:642
  [32] +(A::LinearAlgebra.UpperTriangular, B::LinearAlgebra.UnitUpperTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/triangular.jl:644
  [33] +(x::LinearAlgebra.UpperTriangular, H::LinearAlgebra.UpperHessenberg)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:112
  [34] +(A::LinearAlgebra.UpperTriangular, B::LinearAlgebra.Bidiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:91
  [35] +(A::LinearAlgebra.UpperTriangular{T, <:GPUArraysCore.AbstractGPUMatrix}, J::LinearAlgebra.UniformScaling) where T
     @ GPUArrays ~/.julia/packages/GPUArrays/dAUOE/src/host/uniformscaling.jl:53
  [36] +(a::ColorTypes.TransparentGray, b::ColorTypes.TransparentGray)
     @ ColorVectorSpace ~/.julia/packages/ColorVectorSpace/tLy1N/src/ColorVectorSpace.jl:312
  [37] +(a::ColorTypes.TransparentColor{C, T, 4} where {C<:ColorTypes.AbstractRGB, T}, b::ColorTypes.TransparentColor{C, T, 4} where {C<:ColorTypes.AbstractRGB, T})
     @ ColorVectorSpace ~/.julia/packages/ColorVectorSpace/tLy1N/src/ColorVectorSpace.jl:274
  [38] +(c::Union{ColorTypes.TransparentColor{C, Bool}, C} where C<:Union{ColorTypes.AbstractRGB{Bool}, ColorTypes.AbstractGray{Bool}})
     @ ColorVectorSpace ~/.julia/packages/ColorVectorSpace/tLy1N/src/ColorVectorSpace.jl:250
  [39] +(r1::OrdinalRange, r2::OrdinalRange)
     @ range.jl:1441
  [40] +(x::Core.LLVMPtr, y::Integer)
     @ LLVM.Interop ~/.julia/packages/LLVM/vIbji/src/interop/pointer.jl:114
  [41] +(bb1::Measures.BoundingBox, bb2::Measures.BoundingBox)
     @ Plots ~/.julia/packages/Plots/sxUvK/src/layouts.jl:21
  [42] +(y::AbstractFloat, x::Bool)
     @ bool.jl:176
  [43] +(a::SentinelArrays.ChainedVectorIndex, b::SentinelArrays.ChainedVectorIndex)
     @ SentinelArrays ~/.julia/packages/SentinelArrays/1kRo4/src/chainedvector.jl:209
  [44] +(a::SentinelArrays.ChainedVectorIndex, b::Integer)
     @ SentinelArrays ~/.julia/packages/SentinelArrays/1kRo4/src/chainedvector.jl:207
  [45] +(A::LinearAlgebra.Symmetric, B::LinearAlgebra.Symmetric)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/symmetric.jl:469
  [46] +(A::LinearAlgebra.Symmetric, B::LinearAlgebra.SymTridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/symmetric.jl:486
  [47] +(S::LinearAlgebra.Symmetric, D::LinearAlgebra.Diagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/diagonal.jl:191
  [48] +(A::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::SparseArrays.AbstractSparseMatrix)
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:15
  [49] +(A::LinearAlgebra.Symmetric, B::SparseArrays.AbstractSparseMatrix)
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:18
  [50] +(A::LinearAlgebra.Symmetric{<:Real, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix})
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:25
  [51] +(A::LinearAlgebra.Symmetric{var"#s971", S} where {var"#s971"<:Real, S<:(AbstractMatrix{<:var"#s971"})}, B::LinearAlgebra.Hermitian)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/symmetric.jl:484
  [52] +(A::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix})
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:23
  [53] +(A::LinearAlgebra.Symmetric{T, <:GPUArraysCore.AbstractGPUMatrix}, J::LinearAlgebra.UniformScaling) where T
     @ GPUArrays ~/.julia/packages/GPUArrays/dAUOE/src/host/uniformscaling.jl:53
  [54] +(A::LinearAlgebra.UpperHessenberg, B::LinearAlgebra.UpperHessenberg)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:104
  [55] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:111
  [56] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.Diagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:111
  [57] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.Bidiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:111
  [58] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.Tridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:111
  [59] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.SymTridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:111
  [60] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.UpperTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:111
  [61] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.UnitUpperTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:111
  [62] +(x::X, y::X) where X<:FixedPointNumbers.FixedPoint
     @ FixedPointNumbers ~/.julia/packages/FixedPointNumbers/HAGk2/src/FixedPointNumbers.jl:237
  [63] +(index1::CartesianIndex{N}, index2::CartesianIndex{N}) where N
     @ Base.IteratorsMD multidimensional.jl:111
  [64] +(x::CUDA.CuArrayPtr, y::Integer)
     @ CUDA ~/.julia/packages/CUDA/nbRJk/src/pointer.jl:185
  [65] +(x::Ptr, y::Integer)
     @ pointer.jl:167
  [66] +(a::ColorVectorSpace.RGBRGB)
     @ ColorVectorSpace ~/.julia/packages/ColorVectorSpace/tLy1N/src/ColorVectorSpace.jl:411
  [67] +(a::ColorVectorSpace.RGBRGB, b::ColorVectorSpace.RGBRGB)
     @ ColorVectorSpace ~/.julia/packages/ColorVectorSpace/tLy1N/src/ColorVectorSpace.jl:413
  [68] +(A::GPUArraysCore.AbstractGPUMatrix{T}, J::LinearAlgebra.UniformScaling) where T
     @ GPUArrays ~/.julia/packages/GPUArrays/dAUOE/src/host/uniformscaling.jl:89
  [69] +(lhs::CUDA.CUSPARSE.CuSparseMatrixCSR{T}, rhs::LinearAlgebra.Diagonal) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:505
  [70] +(A::CUDA.CUSPARSE.CuSparseMatrixCSR{T}, J::LinearAlgebra.UniformScaling) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:475
  [71] +(A::CUDA.CUSPARSE.CuSparseMatrixCSR{T}, B::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
  [72] +(A::CUDA.CUSPARSE.CuSparseMatrixCSR{T}, B::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
  [73] +(A::CUDA.CUSPARSE.CuSparseMatrixCSR{T}, B::CUDA.CUSPARSE.CuSparseMatrixCSR{T}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
  [74] +(r1::LinRange{T}, r2::LinRange{T}) where T
     @ range.jl:1448
  [75] +(J::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/uniformscaling.jl:149
  [76] +(J::LinearAlgebra.UniformScaling, F::LinearAlgebra.Hessenberg)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:648
  [77] +(J::LinearAlgebra.UniformScaling{T}, A::SparseArrays.AbstractSparseMatrixCSC{Tv, Ti}) where {T<:Number, Tv, Ti}
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/SparseArrays/src/sparsematrix.jl:4100
  [78] +(x::LinearAlgebra.UniformScaling, H::LinearAlgebra.UpperHessenberg)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:112
  [79] +(J::LinearAlgebra.UniformScaling, x::Number)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/uniformscaling.jl:144
  [80] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.Diagonal{var"#s972", V} where {var"#s972"<:Number, V<:AbstractVector{var"#s972"}})
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:265
  [81] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.Tridiagonal{var"#s972", V} where {var"#s972"<:Number, V<:AbstractVector{var"#s972"}})
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:250
  [82] +(J::LinearAlgebra.UniformScaling, A::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCOO{T}}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:476
  [83] +(J::LinearAlgebra.UniformScaling, A::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:476
  [84] +(J::LinearAlgebra.UniformScaling, A::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:476
  [85] +(J1::LinearAlgebra.UniformScaling, J2::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/uniformscaling.jl:150
  [86] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.SymTridiagonal{var"#s972", V} where {var"#s972"<:Number, V<:AbstractVector{var"#s972"}})
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:255
  [87] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.Bidiagonal{var"#s972", V} where {var"#s972"<:Number, V<:AbstractVector{var"#s972"}})
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:260
  [88] +(J::LinearAlgebra.UniformScaling, A::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCOO{T}}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:476
  [89] +(J::LinearAlgebra.UniformScaling, A::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:476
  [90] +(J::LinearAlgebra.UniformScaling, A::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:476
  [91] +(J::LinearAlgebra.UniformScaling, A::CUDA.CUSPARSE.CuSparseMatrixCSC{T}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:476
  [92] +(J::LinearAlgebra.UniformScaling, A::CUDA.CUSPARSE.CuSparseMatrixCOO{T}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:476
  [93] +(J::LinearAlgebra.UniformScaling, A::CUDA.CUSPARSE.CuSparseMatrixCSR{T}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:476
  [94] +(a::LinearAlgebra.UniformScaling, b::StaticArraysCore.StaticArray{Tuple{N, M}, T, 2} where {N, M, T})
     @ StaticArrays ~/.julia/packages/StaticArrays/cZ1ET/src/linalg.jl:30
  [95] +(J::LinearAlgebra.UniformScaling, B::BitMatrix)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/uniformscaling.jl:152
  [96] +(J::LinearAlgebra.UniformScaling, A::AbstractMatrix)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/uniformscaling.jl:153
  [97] +(x::Base.TwicePrecision, y::Number)
     @ twiceprecision.jl:290
  [98] +(x::Base.TwicePrecision{T}, y::Base.TwicePrecision{T}) where T
     @ twiceprecision.jl:296
  [99] +(x::Base.TwicePrecision, y::Base.TwicePrecision)
     @ twiceprecision.jl:301
 [100] +(r1::StepRangeLen{T, R}, r2::StepRangeLen{T, R}) where {R<:Base.TwicePrecision, T}
     @ twiceprecision.jl:628
 [101] +(r1::StepRangeLen{T, S}, r2::StepRangeLen{T, S}) where {T, S}
     @ range.jl:1464
 [102] +(r1::Union{LinRange, OrdinalRange, StepRangeLen}, r2::Union{LinRange, OrdinalRange, StepRangeLen})
     @ range.jl:1457
 [103] +(A::Array, Bs::Array...)
     @ arraymath.jl:12
 [104] +(A::Array, B::SparseArrays.AbstractSparseMatrixCSC)
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/SparseArrays/src/sparsematrix.jl:2069
 [105] +(A::LinearAlgebra.Transpose{T, <:CUDA.CuArray{T, 2}}, B::CUDA.CuArray{T, 2}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUBLAS ~/.julia/packages/CUDA/nbRJk/lib/cublas/linalg.jl:675
 [106] +(A::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}, B::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [107] +(A::LinearAlgebra.Transpose{T, <:CUDA.CuArray{T, 2}}, B::LinearAlgebra.Adjoint{T, <:CUDA.CuArray{T, 2}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUBLAS ~/.julia/packages/CUDA/nbRJk/lib/cublas/linalg.jl:675
 [108] +(A::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}, B::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [109] +(A::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCOO{T}}, J::LinearAlgebra.UniformScaling) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:475
 [110] +(A::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}, J::LinearAlgebra.UniformScaling) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:475
 [111] +(A::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}, J::LinearAlgebra.UniformScaling) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:475
 [112] +(lhs::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}, rhs::LinearAlgebra.Diagonal) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:505
 [113] +(lhs::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}, rhs::LinearAlgebra.Diagonal) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:505
 [114] +(lhs::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCOO{T}}, rhs::LinearAlgebra.Diagonal) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:505
 [115] +(A::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}, B::CUDA.CUSPARSE.CuSparseMatrixCSR{T}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [116] +(A::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}, B::CUDA.CUSPARSE.CuSparseMatrixCSC{T}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [117] +(A::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}, B::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [118] +(A::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}, B::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [119] +(A::LinearAlgebra.Transpose{T, <:CUDA.CuArray{T, 2}}, B::LinearAlgebra.Transpose{T, <:CUDA.CuArray{T, 2}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUBLAS ~/.julia/packages/CUDA/nbRJk/lib/cublas/linalg.jl:675
 [120] +(lhs::CUDA.CUSPARSE.CuSparseMatrixCOO{T}, rhs::LinearAlgebra.Diagonal) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:505
 [121] +(A::CUDA.CUSPARSE.CuSparseMatrixCOO{T}, J::LinearAlgebra.UniformScaling) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:475
 [122] +(a::ColorTypes.AbstractGray{Bool}, b::Bool)
     @ ColorVectorSpace ~/.julia/packages/ColorVectorSpace/tLy1N/src/ColorVectorSpace.jl:322
 [123] +(a::ColorTypes.AbstractGray{Bool}, b::Number)
     @ ColorVectorSpace ~/.julia/packages/ColorVectorSpace/tLy1N/src/ColorVectorSpace.jl:321
 [124] +(a::ColorTypes.AbstractGray, b::Number)
     @ ColorVectorSpace ~/.julia/packages/ColorVectorSpace/tLy1N/src/ColorVectorSpace.jl:320
 [125] +(x::P, y::P) where P<:Dates.Period
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/periods.jl:75
 [126] +(x::Dates.Period, y::Dates.Period)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/periods.jl:331
 [127] +(y::Dates.Period, x::Dates.CompoundPeriod)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/periods.jl:333
 [128] +(y::Dates.Period, x::Dates.TimeType)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:85
 [129] +(x::Dates.Period, r::AbstractRange{<:Dates.TimeType})
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/ranges.jl:64
 [130] +(y::Union{Dates.CompoundPeriod, Dates.Period}, x::AbstractArray{<:Dates.TimeType})
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/deprecated.jl:14
 [131] +(A::LinearAlgebra.UnitUpperTriangular, B::LinearAlgebra.UpperTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/triangular.jl:646
 [132] +(A::LinearAlgebra.UnitUpperTriangular, B::LinearAlgebra.UnitUpperTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/triangular.jl:648
 [133] +(x::LinearAlgebra.UnitUpperTriangular, H::LinearAlgebra.UpperHessenberg)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:112
 [134] +(A::LinearAlgebra.UnitUpperTriangular, B::LinearAlgebra.Bidiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:91
 [135] +(A::LinearAlgebra.UnitUpperTriangular{T, <:GPUArraysCore.AbstractGPUMatrix}, J::LinearAlgebra.UniformScaling) where T
     @ GPUArrays ~/.julia/packages/GPUArrays/dAUOE/src/host/uniformscaling.jl:33
 [136] +(UL::LinearAlgebra.UnitUpperTriangular, J::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/uniformscaling.jl:181
 [137] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.Bidiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/bidiag.jl:374
 [138] +(x::LinearAlgebra.Bidiagonal, H::LinearAlgebra.UpperHessenberg)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:112
 [139] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.UpperTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:99
 [140] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.UnitUpperTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:99
 [141] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.LowerTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:99
 [142] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.UnitLowerTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:99
 [143] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.Diagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:120
 [144] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.Tridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:188
 [145] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.SymTridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:208
 [146] +(A::LinearAlgebra.Bidiagonal{var"#s972", V} where {var"#s972"<:Number, V<:AbstractVector{var"#s972"}}, B::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:241
 [147] +(A::CUDA.CUSPARSE.CuSparseVector{T}, B::CUDA.CUSPARSE.CuSparseVector{T}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:202
 [148] +(A::CUDA.CuArray{T, 2}, B::LinearAlgebra.Adjoint{T, <:CUDA.CuArray{T, 2}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUBLAS ~/.julia/packages/CUDA/nbRJk/lib/cublas/linalg.jl:675
 [149] +(A::CUDA.CuArray{T, 2}, B::LinearAlgebra.Transpose{T, <:CUDA.CuArray{T, 2}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUBLAS ~/.julia/packages/CUDA/nbRJk/lib/cublas/linalg.jl:675
 [150] +(A::CUDA.CuArray{T, 2}, B::CUDA.CuArray{T, 2}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUBLAS ~/.julia/packages/CUDA/nbRJk/lib/cublas/linalg.jl:675
 [151] +(x::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}})
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/deprecated.jl:55
 [152] +(x::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}}, y::Dates.TimeType)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/deprecated.jl:10
 [153] +(X::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}}, Y::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}})
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/deprecated.jl:62
 [154] +(A::SparseArrays.AbstractSparseMatrixCSC, B::SparseArrays.AbstractSparseMatrixCSC)
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/SparseArrays/src/sparsematrix.jl:2065
 [155] +(A::SparseArrays.AbstractSparseMatrixCSC, B::Array)
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/SparseArrays/src/sparsematrix.jl:2068
 [156] +(A::SparseArrays.AbstractSparseMatrixCSC{Tv, Ti}, J::LinearAlgebra.UniformScaling{T}) where {T<:Number, Tv, Ti}
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/SparseArrays/src/sparsematrix.jl:4098
 [157] +(x::T, y::Integer) where T<:AbstractChar
     @ char.jl:237
 [158] +(A::LinearAlgebra.Adjoint{T, <:CUDA.CuArray{T, 2}}, B::CUDA.CuArray{T, 2}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUBLAS ~/.julia/packages/CUDA/nbRJk/lib/cublas/linalg.jl:675
 [159] +(A::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}, B::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [160] +(A::LinearAlgebra.Adjoint{T, <:CUDA.CuArray{T, 2}}, B::LinearAlgebra.Adjoint{T, <:CUDA.CuArray{T, 2}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUBLAS ~/.julia/packages/CUDA/nbRJk/lib/cublas/linalg.jl:675
 [161] +(A::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}, B::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [162] +(A::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCOO{T}}, J::LinearAlgebra.UniformScaling) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:475
 [163] +(A::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}, J::LinearAlgebra.UniformScaling) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:475
 [164] +(A::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}, J::LinearAlgebra.UniformScaling) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:475
 [165] +(lhs::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}, rhs::LinearAlgebra.Diagonal) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:505
 [166] +(lhs::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}, rhs::LinearAlgebra.Diagonal) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:505
 [167] +(lhs::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCOO{T}}, rhs::LinearAlgebra.Diagonal) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:505
 [168] +(A::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}, B::CUDA.CUSPARSE.CuSparseMatrixCSR{T}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [169] +(A::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}, B::CUDA.CUSPARSE.CuSparseMatrixCSC{T}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [170] +(A::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}, B::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [171] +(A::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}, B::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [172] +(A::LinearAlgebra.Adjoint{T, <:CUDA.CuArray{T, 2}}, B::LinearAlgebra.Transpose{T, <:CUDA.CuArray{T, 2}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUBLAS ~/.julia/packages/CUDA/nbRJk/lib/cublas/linalg.jl:675
 [173] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.SymTridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/tridiag.jl:207
 [174] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.Symmetric)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/symmetric.jl:485
 [175] +(A::LinearAlgebra.SymTridiagonal{var"#s970", V} where {var"#s970"<:Real, V<:AbstractVector{var"#s970"}}, B::LinearAlgebra.Hermitian)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/symmetric.jl:487
 [176] +(x::LinearAlgebra.SymTridiagonal, H::LinearAlgebra.UpperHessenberg)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:112
 [177] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.Diagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:150
 [178] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.Tridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:164
 [179] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.Bidiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:218
 [180] +(A::LinearAlgebra.SymTridiagonal{var"#s972", V} where {var"#s972"<:Number, V<:AbstractVector{var"#s972"}}, B::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:236
 [181] +(a::Tuple{Vararg{Measures.Measure, N}}, b::Tuple{Vararg{Measures.Measure, N}}) where N
     @ Measures ~/.julia/packages/Measures/PKOxJ/src/point.jl:21
 [182] +(a::Tuple{Vararg{Measures.Measure, N}} where N, b::Tuple{Vararg{Measures.Measure, N}} where N)
     @ Measures ~/.julia/packages/Measures/PKOxJ/src/point.jl:15
 [183] +(a::Measures.Length{U}, b::Measures.Length{U}) where U
     @ Measures ~/.julia/packages/Measures/PKOxJ/src/length.jl:31
 [184] +(a::Measures.Measure, b::Measures.Measure)
     @ Measures ~/.julia/packages/Measures/PKOxJ/src/operations.jl:41
 [185] +(A::LinearAlgebra.Hermitian, B::LinearAlgebra.Hermitian)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/symmetric.jl:469
 [186] +(A::LinearAlgebra.Hermitian, B::LinearAlgebra.SymTridiagonal{var"#s969", V} where {var"#s969"<:Real, V<:AbstractVector{var"#s969"}})
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/symmetric.jl:488
 [187] +(H::LinearAlgebra.Hermitian, D::LinearAlgebra.Diagonal{var"#s972", V} where {var"#s972"<:Real, V<:AbstractVector{var"#s972"}})
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/diagonal.jl:197
 [188] +(A::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::SparseArrays.AbstractSparseMatrix)
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:15
 [189] +(A::LinearAlgebra.Hermitian, B::SparseArrays.AbstractSparseMatrix)
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:18
 [190] +(A::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Symmetric{<:Real, <:SparseArrays.AbstractSparseMatrix})
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:26
 [191] +(A::LinearAlgebra.Hermitian, B::LinearAlgebra.Symmetric{var"#s972", S} where {var"#s972"<:Real, S<:(AbstractMatrix{<:var"#s972"})})
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/symmetric.jl:483
 [192] +(A::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix})
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:24
 [193] +(A::LinearAlgebra.Hermitian{T, <:GPUArraysCore.AbstractGPUMatrix}, J::LinearAlgebra.UniformScaling{<:Complex}) where T
     @ GPUArrays ~/.julia/packages/GPUArrays/dAUOE/src/host/uniformscaling.jl:72
 [194] +(A::LinearAlgebra.Hermitian, J::LinearAlgebra.UniformScaling{<:Complex})
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/uniformscaling.jl:195
 [195] +(A::LinearAlgebra.Hermitian{T, <:GPUArraysCore.AbstractGPUMatrix}, J::LinearAlgebra.UniformScaling) where T
     @ GPUArrays ~/.julia/packages/GPUArrays/dAUOE/src/host/uniformscaling.jl:53
 [196] +(x::Dates.Instant)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:4
 [197] +(x::Dates.AbstractTime, y::Missing)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:88
 [198] +(z::Complex, w::Complex)
     @ complex.jl:291
 [199] +(x::AbstractIrrational, y::AbstractIrrational)
     @ irrationals.jl:161
 [200] +(A::BitArray, B::BitArray)
     @ bitarray.jl:1184
 [201] +(D::LinearAlgebra.Diagonal, S::LinearAlgebra.Symmetric)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/diagonal.jl:188
 [202] +(lhs::LinearAlgebra.Diagonal, rhs::CUDA.CUSPARSE.CuSparseMatrixCSR{T}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:502
 [203] +(D::LinearAlgebra.Diagonal{var"#s972", V} where {var"#s972"<:Real, V<:AbstractVector{var"#s972"}}, H::LinearAlgebra.Hermitian)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/diagonal.jl:194
 [204] +(x::LinearAlgebra.Diagonal, H::LinearAlgebra.UpperHessenberg)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:112
 [205] +(lhs::LinearAlgebra.Diagonal, rhs::CUDA.CUSPARSE.CuSparseMatrixCOO{T}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:502
 [206] +(Da::LinearAlgebra.Diagonal, Db::LinearAlgebra.Diagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/diagonal.jl:184
 [207] +(A::LinearAlgebra.Diagonal, B::LinearAlgebra.Tridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:168
 [208] +(A::LinearAlgebra.Diagonal, B::LinearAlgebra.SymTridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:140
 [209] +(lhs::LinearAlgebra.Diagonal, rhs::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCOO{T}}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:502
 [210] +(lhs::LinearAlgebra.Diagonal, rhs::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:502
 [211] +(lhs::LinearAlgebra.Diagonal, rhs::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:502
 [212] +(A::LinearAlgebra.Diagonal{var"#s972", V} where {var"#s972"<:Number, V<:AbstractVector{var"#s972"}}, B::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:246
 [213] +(A::LinearAlgebra.Diagonal, B::LinearAlgebra.Bidiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:130
 [214] +(lhs::LinearAlgebra.Diagonal, rhs::CUDA.CUSPARSE.CuSparseMatrixCSC{T}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:502
 [215] +(lhs::LinearAlgebra.Diagonal, rhs::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:502
 [216] +(lhs::LinearAlgebra.Diagonal, rhs::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:502
 [217] +(lhs::LinearAlgebra.Diagonal, rhs::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCOO{T}}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:502
 [218] +(a::ColorTypes.AbstractRGB, b::ColorTypes.AbstractRGB)
     @ ColorVectorSpace ~/.julia/packages/ColorVectorSpace/tLy1N/src/ColorVectorSpace.jl:272
 [219] +(a::ColorTypes.AbstractGray{Bool}, b::ColorTypes.AbstractGray{Bool})
     @ ColorVectorSpace ~/.julia/packages/ColorVectorSpace/tLy1N/src/ColorVectorSpace.jl:311
 [220] +(c::Union{ColorTypes.TransparentColor{C, T}, C} where {T, C<:Union{ColorTypes.AbstractRGB{T}, ColorTypes.AbstractGray{T}}})
     @ ColorVectorSpace ~/.julia/packages/ColorVectorSpace/tLy1N/src/ColorVectorSpace.jl:249
 [221] +(a::ColorTypes.AbstractGray, b::ColorTypes.AbstractGray)
     @ ColorVectorSpace ~/.julia/packages/ColorVectorSpace/tLy1N/src/ColorVectorSpace.jl:310
 [222] +(a::Union{ColorTypes.TransparentColor{C, T}, C} where {T, C<:Union{ColorTypes.AbstractRGB{T}, ColorTypes.AbstractGray{T}}}, b::Union{ColorTypes.TransparentColor{C, T}, C} where {T, C<:Union{ColorTypes.AbstractRGB{T}, ColorTypes.AbstractGray{T}}})
     @ ColorVectorSpace ~/.julia/packages/ColorVectorSpace/tLy1N/src/ColorVectorSpace.jl:260
 [223] +(A::LinearAlgebra.LowerTriangular, B::LinearAlgebra.LowerTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/triangular.jl:643
 [224] +(A::LinearAlgebra.LowerTriangular, B::LinearAlgebra.UnitLowerTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/triangular.jl:645
 [225] +(A::LinearAlgebra.AbstractTriangular, B::LinearAlgebra.AbstractTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/triangular.jl:650
 [226] +(A::LinearAlgebra.LowerTriangular, B::LinearAlgebra.Bidiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:91
 [227] +(A::LinearAlgebra.LowerTriangular{T, <:GPUArraysCore.AbstractGPUMatrix}, J::LinearAlgebra.UniformScaling) where T
     @ GPUArrays ~/.julia/packages/GPUArrays/dAUOE/src/host/uniformscaling.jl:53
 [228] +(p::SpecialFunctions.SimplePoly{S}, q::SpecialFunctions.SimplePoly{T}) where {S, T}
     @ SpecialFunctions ~/.julia/packages/SpecialFunctions/QH8rV/src/expint.jl:11
 [229] +(F::LinearAlgebra.Hessenberg, J::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:647
 [230] +(lhs::CUDA.CUSPARSE.CuSparseMatrixCSC{T}, rhs::LinearAlgebra.Diagonal) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:505
 [231] +(A::CUDA.CUSPARSE.CuSparseMatrixCSC{T}, J::LinearAlgebra.UniformScaling) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:475
 [232] +(A::CUDA.CUSPARSE.CuSparseMatrixCSC{T}, B::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [233] +(A::CUDA.CUSPARSE.CuSparseMatrixCSC{T}, B::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [234] +(A::CUDA.CUSPARSE.CuSparseMatrixCSC{T}, B::CUDA.CUSPARSE.CuSparseMatrixCSC{T}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [235] +(x::SparseArrays.AbstractSparseVector, y::SparseArrays.AbstractSparseVector)
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/SparseArrays/src/sparsevector.jl:1516
 [236] +(a::StaticArraysCore.StaticArray{Tuple{N, M}, T, 2} where {N, M, T}, b::LinearAlgebra.UniformScaling)
     @ StaticArrays ~/.julia/packages/StaticArrays/cZ1ET/src/linalg.jl:29
 [237] +(a::StaticArraysCore.StaticArray)
     @ StaticArrays ~/.julia/packages/StaticArrays/cZ1ET/src/linalg.jl:7
 [238] +(x::AbstractArray{<:Dates.TimeType}, y::Union{Dates.CompoundPeriod, Dates.Period})
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/deprecated.jl:6
 [239] +(a::StaticArraysCore.StaticArray, b::StaticArraysCore.StaticArray)
     @ StaticArrays ~/.julia/packages/StaticArrays/cZ1ET/src/linalg.jl:12
 [240] +(a::AbstractArray, b::StaticArraysCore.StaticArray)
     @ StaticArrays ~/.julia/packages/StaticArrays/cZ1ET/src/linalg.jl:13
 [241] +(a::StaticArraysCore.StaticArray, b::AbstractArray)
     @ StaticArrays ~/.julia/packages/StaticArrays/cZ1ET/src/linalg.jl:14
 [242] +(A::AbstractArray, B::AbstractArray)
     @ arraymath.jl:6
 [243] +(x::Rational, y::Integer)
     @ rational.jl:327
 [244] +(x::BigFloat, c::Union{UInt16, UInt32, UInt64, UInt8})
     @ Base.MPFR mpfr.jl:402
 [245] +(x::BigFloat, c::Union{Int16, Int32, Int64, Int8})
     @ Base.MPFR mpfr.jl:410
 [246] +(x::BigFloat, c::Union{Float16, Float32, Float64})
     @ Base.MPFR mpfr.jl:418
 [247] +(x::BigFloat, y::BigFloat)
     @ Base.MPFR mpfr.jl:395
 [248] +(x::BigFloat, c::BigInt)
     @ Base.MPFR mpfr.jl:426
 [249] +(a::BigFloat, b::BigFloat, c::BigFloat)
     @ Base.MPFR mpfr.jl:567
 [250] +(a::BigFloat, b::BigFloat, c::BigFloat, d::BigFloat)
     @ Base.MPFR mpfr.jl:573
 [251] +(a::BigFloat, b::BigFloat, c::BigFloat, d::BigFloat, e::BigFloat)
     @ Base.MPFR mpfr.jl:580
 [252] +(a::Pkg.Resolve.VersionWeight, b::Pkg.Resolve.VersionWeight)
     @ Pkg.Resolve /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Pkg/src/Resolve/versionweights.jl:22
 [253] +(x::Bool)
     @ bool.jl:163
 [254] +(x::Integer, y::Ptr)
     @ pointer.jl:169
 [255] +(y::Integer, x::Rational)
     @ rational.jl:334
 [256] +(x::Integer, y::AbstractChar)
     @ char.jl:247
 [257] +(a::T, b::CEnum.Cenum{S}) where {T<:Integer, S<:Integer}
     @ CEnum ~/.julia/packages/CEnum/Bqafi/src/operators.jl:13
 [258] +(x::Integer, y::Core.LLVMPtr)
     @ LLVM.Interop ~/.julia/packages/LLVM/vIbji/src/interop/pointer.jl:116
 [259] +(a::Integer, b::SentinelArrays.ChainedVectorIndex)
     @ SentinelArrays ~/.julia/packages/SentinelArrays/1kRo4/src/chainedvector.jl:208
 [260] +(x::Integer, y::CUDA.CuArrayPtr)
     @ CUDA ~/.julia/packages/CUDA/nbRJk/src/pointer.jl:187
 [261] +(x::Integer, y::CUDA.CuPtr)
     @ CUDA ~/.julia/packages/CUDA/nbRJk/src/pointer.jl:78
 [262] +(x::Bool, y::T) where T<:AbstractFloat
     @ bool.jl:173
 [263] +(x::Bool, y::Bool)
     @ bool.jl:166
 [264] +(x::Bool, z::Complex{Bool})
     @ complex.jl:302
 [265] +(x::Real, z::Complex{Bool})
     @ complex.jl:316
 [266] +(x::Bool, z::Complex)
     @ complex.jl:309
 [267] +(x::Real, z::Complex)
     @ complex.jl:328
 [268] +(dt::Dates.Date, t::Dates.Time)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:19
 [269] +(dt::Dates.Date, y::Dates.Year)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:27
 [270] +(dt::Dates.Date, z::Dates.Month)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:54
 [271] +(x::Dates.Date, y::Dates.Quarter)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:73
 [272] +(x::Dates.Date, y::Dates.Week)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:77
 [273] +(x::Dates.Date, y::Dates.Day)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:79
 [274] +(B::BitMatrix, J::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/uniformscaling.jl:151
 [275] +(A::AbstractMatrix, J::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/uniformscaling.jl:214
 [276] +(x::AbstractArray{<:Number})
     @ abstractarraymath.jl:220
 [277] +(a::OpenSSL.BigNum, b::OpenSSL.BigNum)
     @ OpenSSL ~/.julia/packages/OpenSSL/8wxMC/src/OpenSSL.jl:747
 [278] +(::Missing)
     @ missing.jl:101
 [279] +(::Missing, ::Number)
     @ missing.jl:123
 [280] +(x::Missing, y::Dates.AbstractTime)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:89
 [281] +(::Missing, ::Missing)
     @ missing.jl:122
 [282] +(a::Pkg.Resolve.FieldValue, b::Pkg.Resolve.FieldValue)
     @ Pkg.Resolve /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Pkg/src/Resolve/fieldvalues.jl:43
 [283] +(dt::Dates.DateTime, y::Dates.Year)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:23
 [284] +(dt::Dates.DateTime, z::Dates.Month)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:47
 [285] +(x::Dates.DateTime, y::Dates.Quarter)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:75
 [286] +(x::Dates.DateTime, y::Dates.Period)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:81
 [287] +(x::BFloat16s.BFloat16, y::BFloat16s.BFloat16)
     @ BFloat16s ~/.julia/packages/BFloat16s/uUmkF/src/bfloat16.jl:146
 [288] +(z::Complex{Bool}, x::Bool)
     @ complex.jl:303
 [289] +(z::Complex, x::Bool)
     @ complex.jl:310
 [290] +(z::Complex{Bool}, x::Real)
     @ complex.jl:317
 [291] +(z::Complex)
     @ complex.jl:289
 [292] +(z::Complex, x::Real)
     @ complex.jl:329
 [293] +(x::Dates.CompoundPeriod, y::Dates.Period)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/periods.jl:332
 [294] +(x::Dates.CompoundPeriod, y::Dates.TimeType)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/periods.jl:362
 [295] +(x::Dates.CompoundPeriod, y::Dates.CompoundPeriod)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/periods.jl:334
 [296] +(x::BigInt, c::Union{UInt16, UInt32, UInt64, UInt8})
     @ Base.GMP gmp.jl:538
 [297] +(x::BigInt, c::Union{Int16, Int32, Int64, Int8})
     @ Base.GMP gmp.jl:544
 [298] +(x::BigInt, y::BigInt)
     @ Base.GMP gmp.jl:490
 [299] +(a::BigInt, b::BigInt, c::BigInt)
     @ Base.GMP gmp.jl:530
 [300] +(a::BigInt, b::BigInt, c::BigInt, d::BigInt)
     @ Base.GMP gmp.jl:531
 [301] +(a::BigInt, b::BigInt, c::BigInt, d::BigInt, e::BigInt)
     @ Base.GMP gmp.jl:532
 [302] +(x::BigInt, y::BigInt, rest::BigInt...)
     @ Base.GMP gmp.jl:666
 [303] +(a::Integer, b::Integer)
     @ int.jl:1038
 [304] +(c::BigInt, x::BigFloat)
     @ Base.MPFR mpfr.jl:431
 [305] +(self::TimerOutputs.TimeData, other::TimerOutputs.TimeData)
     @ TimerOutputs ~/.julia/packages/TimerOutputs/RsWnF/src/TimerOutput.jl:14
 [306] +(a::Random123.__m128i, b::Integer)
     @ Random123 ~/.julia/packages/Random123/u5oEp/src/aesni_common.jl:35
 [307] +(a::Random123.__m128i, b::Random123.__m128i)
     @ Random123 ~/.julia/packages/Random123/u5oEp/src/aesni_common.jl:29
 [308] +(x::Dates.Time, y::Dates.TimePeriod)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:83
 [309] +(t::Dates.Time, dt::Dates.Date)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:20
 [310] +(x::Dates.TimeType)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:8
 [311] +(a::Dates.TimeType, b::Dates.Period, c::Dates.Period)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/periods.jl:353
 [312] +(a::Dates.TimeType, b::Dates.Period, c::Dates.Period, d::Dates.Period...)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/periods.jl:354
 [313] +(x::Dates.TimeType, y::Dates.CompoundPeriod)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/periods.jl:356
 [314] +(x::Rational{BigInt}, y::Rational{BigInt})
     @ Base.GMP.MPQ gmp.jl:1027
 [315] +(x::Rational)
     @ rational.jl:284
 [316] +(x::Number, y::Base.TwicePrecision)
     @ twiceprecision.jl:294
 [317] +(::Number, ::Missing)
     @ missing.jl:124
 [318] +(x::Number, J::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/uniformscaling.jl:145
 [319] +(a::Number, b::ColorTypes.AbstractGray)
     @ ColorVectorSpace ~/.julia/packages/ColorVectorSpace/tLy1N/src/ColorVectorSpace.jl:323
 [320] +(x::Rational, y::Rational)
     @ rational.jl:298
 [321] +(x::Number)
     @ operators.jl:515
 [322] +(x::T, y::T) where T<:Number
     @ promotion.jl:485
 [323] +(x::Number, y::Number)
     @ promotion.jl:410
 [324] +(level::Base.CoreLogging.LogLevel, inc::Integer)
     @ Base.CoreLogging logging.jl:131
 [325] +(a, b, c, xs...)
     @ operators.jl:578