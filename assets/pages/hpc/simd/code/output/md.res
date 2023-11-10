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
  [12] +(a::Measures.Length{U}, b::Measures.Length{U}) where U
     @ Measures ~/.julia/packages/Measures/PKOxJ/src/length.jl:31
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
  [29] +(A::LinearAlgebra.UpperTriangular, B::LinearAlgebra.UpperTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/triangular.jl:642
  [30] +(A::LinearAlgebra.UpperTriangular, B::LinearAlgebra.UnitUpperTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/triangular.jl:644
  [31] +(x::LinearAlgebra.UpperTriangular, H::LinearAlgebra.UpperHessenberg)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:112
  [32] +(A::LinearAlgebra.UpperTriangular, B::LinearAlgebra.Bidiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:91
  [33] +(A::LinearAlgebra.UpperTriangular{T, <:GPUArraysCore.AbstractGPUMatrix}, J::LinearAlgebra.UniformScaling) where T
     @ GPUArrays ~/.julia/packages/GPUArrays/dAUOE/src/host/uniformscaling.jl:53
  [34] +(a::StaticArraysCore.StaticArray{Tuple{N, M}, T, 2} where {N, M, T}, b::LinearAlgebra.UniformScaling)
     @ StaticArrays ~/.julia/packages/StaticArrays/cZ1ET/src/linalg.jl:29
  [35] +(a::StaticArraysCore.StaticArray)
     @ StaticArrays ~/.julia/packages/StaticArrays/cZ1ET/src/linalg.jl:7
  [36] +(x::AbstractArray{<:Dates.TimeType}, y::Union{Dates.CompoundPeriod, Dates.Period})
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/deprecated.jl:6
  [37] +(a::StaticArraysCore.StaticArray, b::StaticArraysCore.StaticArray)
     @ StaticArrays ~/.julia/packages/StaticArrays/cZ1ET/src/linalg.jl:12
  [38] +(a::AbstractArray, b::StaticArraysCore.StaticArray)
     @ StaticArrays ~/.julia/packages/StaticArrays/cZ1ET/src/linalg.jl:13
  [39] +(a::StaticArraysCore.StaticArray, b::AbstractArray)
     @ StaticArrays ~/.julia/packages/StaticArrays/cZ1ET/src/linalg.jl:14
  [40] +(r1::OrdinalRange, r2::OrdinalRange)
     @ range.jl:1441
  [41] +(x::Core.LLVMPtr, y::Integer)
     @ LLVM.Interop ~/.julia/packages/LLVM/vIbji/src/interop/pointer.jl:114
  [42] +(x::X, y::X) where X<:FixedPointNumbers.FixedPoint
     @ FixedPointNumbers ~/.julia/packages/FixedPointNumbers/HAGk2/src/FixedPointNumbers.jl:237
  [43] +(y::AbstractFloat, x::Bool)
     @ bool.jl:176
  [44] +(a::SentinelArrays.ChainedVectorIndex, b::SentinelArrays.ChainedVectorIndex)
     @ SentinelArrays ~/.julia/packages/SentinelArrays/1kRo4/src/chainedvector.jl:209
  [45] +(a::SentinelArrays.ChainedVectorIndex, b::Integer)
     @ SentinelArrays ~/.julia/packages/SentinelArrays/1kRo4/src/chainedvector.jl:207
  [46] +(bb1::Measures.BoundingBox, bb2::Measures.BoundingBox)
     @ Plots ~/.julia/packages/Plots/sxUvK/src/layouts.jl:21
  [47] +(A::LinearAlgebra.Symmetric, B::LinearAlgebra.Symmetric)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/symmetric.jl:469
  [48] +(A::LinearAlgebra.Symmetric, B::LinearAlgebra.SymTridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/symmetric.jl:486
  [49] +(S::LinearAlgebra.Symmetric, D::LinearAlgebra.Diagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/diagonal.jl:191
  [50] +(A::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::SparseArrays.AbstractSparseMatrix)
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:15
  [51] +(A::LinearAlgebra.Symmetric, B::SparseArrays.AbstractSparseMatrix)
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:18
  [52] +(A::LinearAlgebra.Symmetric{<:Real, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix})
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:25
  [53] +(A::LinearAlgebra.Symmetric{var"#s971", S} where {var"#s971"<:Real, S<:(AbstractMatrix{<:var"#s971"})}, B::LinearAlgebra.Hermitian)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/symmetric.jl:484
  [54] +(A::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix})
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:23
  [55] +(A::LinearAlgebra.Symmetric{T, <:GPUArraysCore.AbstractGPUMatrix}, J::LinearAlgebra.UniformScaling) where T
     @ GPUArrays ~/.julia/packages/GPUArrays/dAUOE/src/host/uniformscaling.jl:53
  [56] +(A::LinearAlgebra.UpperHessenberg, B::LinearAlgebra.UpperHessenberg)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:104
  [57] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:111
  [58] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.Diagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:111
  [59] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.Bidiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:111
  [60] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.Tridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:111
  [61] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.SymTridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:111
  [62] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.UpperTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:111
  [63] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.UnitUpperTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:111
  [64] +(a::ColorTypes.TransparentGray, b::ColorTypes.TransparentGray)
     @ ColorVectorSpace ~/.julia/packages/ColorVectorSpace/tLy1N/src/ColorVectorSpace.jl:312
  [65] +(a::ColorTypes.TransparentColor{C, T, 4} where {C<:ColorTypes.AbstractRGB, T}, b::ColorTypes.TransparentColor{C, T, 4} where {C<:ColorTypes.AbstractRGB, T})
     @ ColorVectorSpace ~/.julia/packages/ColorVectorSpace/tLy1N/src/ColorVectorSpace.jl:274
  [66] +(c::Union{ColorTypes.TransparentColor{C, Bool}, C} where C<:Union{ColorTypes.AbstractRGB{Bool}, ColorTypes.AbstractGray{Bool}})
     @ ColorVectorSpace ~/.julia/packages/ColorVectorSpace/tLy1N/src/ColorVectorSpace.jl:250
  [67] +(index1::CartesianIndex{N}, index2::CartesianIndex{N}) where N
     @ Base.IteratorsMD multidimensional.jl:111
  [68] +(a::ColorTypes.AbstractRGB, b::ColorTypes.AbstractRGB)
     @ ColorVectorSpace ~/.julia/packages/ColorVectorSpace/tLy1N/src/ColorVectorSpace.jl:272
  [69] +(x::Ptr, y::Integer)
     @ pointer.jl:167
  [70] +(r1::LinRange{T}, r2::LinRange{T}) where T
     @ range.jl:1448
  [71] +(A::GPUArraysCore.AbstractGPUMatrix{T}, J::LinearAlgebra.UniformScaling) where T
     @ GPUArrays ~/.julia/packages/GPUArrays/dAUOE/src/host/uniformscaling.jl:89
  [72] +(J::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/uniformscaling.jl:149
  [73] +(J::LinearAlgebra.UniformScaling, F::LinearAlgebra.Hessenberg)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:648
  [74] +(J::LinearAlgebra.UniformScaling{T}, A::SparseArrays.AbstractSparseMatrixCSC{Tv, Ti}) where {T<:Number, Tv, Ti}
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/SparseArrays/src/sparsematrix.jl:4100
  [75] +(x::LinearAlgebra.UniformScaling, H::LinearAlgebra.UpperHessenberg)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:112
  [76] +(J::LinearAlgebra.UniformScaling, x::Number)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/uniformscaling.jl:144
  [77] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.Diagonal{var"#s972", V} where {var"#s972"<:Number, V<:AbstractVector{var"#s972"}})
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:265
  [78] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.Tridiagonal{var"#s972", V} where {var"#s972"<:Number, V<:AbstractVector{var"#s972"}})
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:250
  [79] +(J::LinearAlgebra.UniformScaling, A::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCOO{T}}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:476
  [80] +(J::LinearAlgebra.UniformScaling, A::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:476
  [81] +(J::LinearAlgebra.UniformScaling, A::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:476
  [82] +(J1::LinearAlgebra.UniformScaling, J2::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/uniformscaling.jl:150
  [83] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.SymTridiagonal{var"#s972", V} where {var"#s972"<:Number, V<:AbstractVector{var"#s972"}})
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:255
  [84] +(A::LinearAlgebra.UniformScaling, B::LinearAlgebra.Bidiagonal{var"#s972", V} where {var"#s972"<:Number, V<:AbstractVector{var"#s972"}})
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:260
  [85] +(J::LinearAlgebra.UniformScaling, A::CUDA.CUSPARSE.CuSparseMatrixCSC{T}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:476
  [86] +(J::LinearAlgebra.UniformScaling, A::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCOO{T}}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:476
  [87] +(J::LinearAlgebra.UniformScaling, A::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:476
  [88] +(J::LinearAlgebra.UniformScaling, A::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:476
  [89] +(J::LinearAlgebra.UniformScaling, A::CUDA.CUSPARSE.CuSparseMatrixCSR{T}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:476
  [90] +(a::LinearAlgebra.UniformScaling, b::StaticArraysCore.StaticArray{Tuple{N, M}, T, 2} where {N, M, T})
     @ StaticArrays ~/.julia/packages/StaticArrays/cZ1ET/src/linalg.jl:30
  [91] +(J::LinearAlgebra.UniformScaling, A::CUDA.CUSPARSE.CuSparseMatrixCOO{T}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:476
  [92] +(J::LinearAlgebra.UniformScaling, B::BitMatrix)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/uniformscaling.jl:152
  [93] +(J::LinearAlgebra.UniformScaling, A::AbstractMatrix)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/uniformscaling.jl:153
  [94] +(x::Base.TwicePrecision, y::Number)
     @ twiceprecision.jl:290
  [95] +(x::Base.TwicePrecision{T}, y::Base.TwicePrecision{T}) where T
     @ twiceprecision.jl:296
  [96] +(x::Base.TwicePrecision, y::Base.TwicePrecision)
     @ twiceprecision.jl:301
  [97] +(r1::StepRangeLen{T, R}, r2::StepRangeLen{T, R}) where {R<:Base.TwicePrecision, T}
     @ twiceprecision.jl:628
  [98] +(r1::StepRangeLen{T, S}, r2::StepRangeLen{T, S}) where {T, S}
     @ range.jl:1464
  [99] +(r1::Union{LinRange, OrdinalRange, StepRangeLen}, r2::Union{LinRange, OrdinalRange, StepRangeLen})
     @ range.jl:1457
 [100] +(A::Array, Bs::Array...)
     @ arraymath.jl:12
 [101] +(A::Array, B::SparseArrays.AbstractSparseMatrixCSC)
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/SparseArrays/src/sparsematrix.jl:2069
 [102] +(A::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}, B::CUDA.CUSPARSE.CuSparseMatrixCSC{T}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [103] +(A::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}, B::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [104] +(A::LinearAlgebra.Transpose{T, <:CUDA.CuArray{T, 2}}, B::LinearAlgebra.Adjoint{T, <:CUDA.CuArray{T, 2}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUBLAS ~/.julia/packages/CUDA/nbRJk/lib/cublas/linalg.jl:675
 [105] +(A::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}, B::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [106] +(A::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCOO{T}}, J::LinearAlgebra.UniformScaling) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:475
 [107] +(A::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}, J::LinearAlgebra.UniformScaling) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:475
 [108] +(A::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}, J::LinearAlgebra.UniformScaling) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:475
 [109] +(A::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}, B::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [110] +(A::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}, B::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [111] +(A::LinearAlgebra.Transpose{T, <:CUDA.CuArray{T, 2}}, B::LinearAlgebra.Transpose{T, <:CUDA.CuArray{T, 2}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUBLAS ~/.julia/packages/CUDA/nbRJk/lib/cublas/linalg.jl:675
 [112] +(lhs::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}, rhs::LinearAlgebra.Diagonal) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:505
 [113] +(lhs::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}, rhs::LinearAlgebra.Diagonal) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:505
 [114] +(lhs::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCOO{T}}, rhs::LinearAlgebra.Diagonal) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:505
 [115] +(A::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}, B::CUDA.CUSPARSE.CuSparseMatrixCSR{T}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [116] +(A::LinearAlgebra.Transpose{T, <:CUDA.CuArray{T, 2}}, B::CUDA.CuArray{T, 2}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUBLAS ~/.julia/packages/CUDA/nbRJk/lib/cublas/linalg.jl:675
 [117] +(x::CUDA.CuArrayPtr, y::Integer)
     @ CUDA ~/.julia/packages/CUDA/nbRJk/src/pointer.jl:185
 [118] +(a::ColorVectorSpace.RGBRGB)
     @ ColorVectorSpace ~/.julia/packages/ColorVectorSpace/tLy1N/src/ColorVectorSpace.jl:411
 [119] +(a::ColorVectorSpace.RGBRGB, b::ColorVectorSpace.RGBRGB)
     @ ColorVectorSpace ~/.julia/packages/ColorVectorSpace/tLy1N/src/ColorVectorSpace.jl:413
 [120] +(x::P, y::P) where P<:Dates.Period
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/periods.jl:75
 [121] +(x::Dates.Period, y::Dates.Period)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/periods.jl:331
 [122] +(y::Dates.Period, x::Dates.CompoundPeriod)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/periods.jl:333
 [123] +(y::Dates.Period, x::Dates.TimeType)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:85
 [124] +(x::Dates.Period, r::AbstractRange{<:Dates.TimeType})
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/ranges.jl:64
 [125] +(y::Union{Dates.CompoundPeriod, Dates.Period}, x::AbstractArray{<:Dates.TimeType})
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/deprecated.jl:14
 [126] +(A::LinearAlgebra.UnitUpperTriangular, B::LinearAlgebra.UpperTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/triangular.jl:646
 [127] +(A::LinearAlgebra.UnitUpperTriangular, B::LinearAlgebra.UnitUpperTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/triangular.jl:648
 [128] +(x::LinearAlgebra.UnitUpperTriangular, H::LinearAlgebra.UpperHessenberg)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:112
 [129] +(A::LinearAlgebra.UnitUpperTriangular, B::LinearAlgebra.Bidiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:91
 [130] +(A::LinearAlgebra.UnitUpperTriangular{T, <:GPUArraysCore.AbstractGPUMatrix}, J::LinearAlgebra.UniformScaling) where T
     @ GPUArrays ~/.julia/packages/GPUArrays/dAUOE/src/host/uniformscaling.jl:33
 [131] +(UL::LinearAlgebra.UnitUpperTriangular, J::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/uniformscaling.jl:181
 [132] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.Bidiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/bidiag.jl:374
 [133] +(x::LinearAlgebra.Bidiagonal, H::LinearAlgebra.UpperHessenberg)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:112
 [134] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.UpperTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:99
 [135] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.UnitUpperTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:99
 [136] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.LowerTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:99
 [137] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.UnitLowerTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:99
 [138] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.Diagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:120
 [139] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.Tridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:188
 [140] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.SymTridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:208
 [141] +(A::LinearAlgebra.Bidiagonal{var"#s972", V} where {var"#s972"<:Number, V<:AbstractVector{var"#s972"}}, B::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:241
 [142] +(lhs::CUDA.CUSPARSE.CuSparseMatrixCSR{T}, rhs::LinearAlgebra.Diagonal) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:505
 [143] +(A::CUDA.CUSPARSE.CuSparseMatrixCSR{T}, J::LinearAlgebra.UniformScaling) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:475
 [144] +(A::CUDA.CUSPARSE.CuSparseMatrixCSR{T}, B::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [145] +(A::CUDA.CUSPARSE.CuSparseMatrixCSR{T}, B::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [146] +(A::CUDA.CUSPARSE.CuSparseMatrixCSR{T}, B::CUDA.CUSPARSE.CuSparseMatrixCSR{T}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [147] +(x::CUDA.CuPtr, y::Integer)
     @ CUDA ~/.julia/packages/CUDA/nbRJk/src/pointer.jl:76
 [148] +(a::Measures.Measure, b::Measures.Measure)
     @ Measures ~/.julia/packages/Measures/PKOxJ/src/operations.jl:41
 [149] +(A::SparseArrays.AbstractSparseMatrixCSC, B::SparseArrays.AbstractSparseMatrixCSC)
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/SparseArrays/src/sparsematrix.jl:2065
 [150] +(A::SparseArrays.AbstractSparseMatrixCSC, B::Array)
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/SparseArrays/src/sparsematrix.jl:2068
 [151] +(A::SparseArrays.AbstractSparseMatrixCSC{Tv, Ti}, J::LinearAlgebra.UniformScaling{T}) where {T<:Number, Tv, Ti}
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/SparseArrays/src/sparsematrix.jl:4098
 [152] +(x::T, y::Integer) where T<:AbstractChar
     @ char.jl:237
 [153] +(A::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}, B::CUDA.CUSPARSE.CuSparseMatrixCSC{T}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [154] +(A::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}, B::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [155] +(A::LinearAlgebra.Adjoint{T, <:CUDA.CuArray{T, 2}}, B::LinearAlgebra.Adjoint{T, <:CUDA.CuArray{T, 2}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUBLAS ~/.julia/packages/CUDA/nbRJk/lib/cublas/linalg.jl:675
 [156] +(A::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}, B::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [157] +(A::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCOO{T}}, J::LinearAlgebra.UniformScaling) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:475
 [158] +(A::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}, J::LinearAlgebra.UniformScaling) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:475
 [159] +(A::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}, J::LinearAlgebra.UniformScaling) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:475
 [160] +(A::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}, B::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [161] +(A::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}, B::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [162] +(A::LinearAlgebra.Adjoint{T, <:CUDA.CuArray{T, 2}}, B::LinearAlgebra.Transpose{T, <:CUDA.CuArray{T, 2}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUBLAS ~/.julia/packages/CUDA/nbRJk/lib/cublas/linalg.jl:675
 [163] +(lhs::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}, rhs::LinearAlgebra.Diagonal) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:505
 [164] +(lhs::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}, rhs::LinearAlgebra.Diagonal) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:505
 [165] +(lhs::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCOO{T}}, rhs::LinearAlgebra.Diagonal) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:505
 [166] +(A::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}, B::CUDA.CUSPARSE.CuSparseMatrixCSR{T}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [167] +(A::LinearAlgebra.Adjoint{T, <:CUDA.CuArray{T, 2}}, B::CUDA.CuArray{T, 2}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUBLAS ~/.julia/packages/CUDA/nbRJk/lib/cublas/linalg.jl:675
 [168] +(A::CUDA.CuArray{T, 2}, B::LinearAlgebra.Adjoint{T, <:CUDA.CuArray{T, 2}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUBLAS ~/.julia/packages/CUDA/nbRJk/lib/cublas/linalg.jl:675
 [169] +(A::CUDA.CuArray{T, 2}, B::LinearAlgebra.Transpose{T, <:CUDA.CuArray{T, 2}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUBLAS ~/.julia/packages/CUDA/nbRJk/lib/cublas/linalg.jl:675
 [170] +(A::CUDA.CuArray{T, 2}, B::CUDA.CuArray{T, 2}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUBLAS ~/.julia/packages/CUDA/nbRJk/lib/cublas/linalg.jl:675
 [171] +(x::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}})
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/deprecated.jl:55
 [172] +(x::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}}, y::Dates.TimeType)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/deprecated.jl:10
 [173] +(X::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}}, Y::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}})
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/deprecated.jl:62
 [174] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.SymTridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/tridiag.jl:207
 [175] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.Symmetric)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/symmetric.jl:485
 [176] +(A::LinearAlgebra.SymTridiagonal{var"#s970", V} where {var"#s970"<:Real, V<:AbstractVector{var"#s970"}}, B::LinearAlgebra.Hermitian)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/symmetric.jl:487
 [177] +(x::LinearAlgebra.SymTridiagonal, H::LinearAlgebra.UpperHessenberg)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:112
 [178] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.Diagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:150
 [179] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.Tridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:164
 [180] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.Bidiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:218
 [181] +(A::LinearAlgebra.SymTridiagonal{var"#s972", V} where {var"#s972"<:Number, V<:AbstractVector{var"#s972"}}, B::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:236
 [182] +(lhs::CUDA.CUSPARSE.CuSparseMatrixCSC{T}, rhs::LinearAlgebra.Diagonal) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:505
 [183] +(A::CUDA.CUSPARSE.CuSparseMatrixCSC{T}, J::LinearAlgebra.UniformScaling) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:475
 [184] +(A::CUDA.CUSPARSE.CuSparseMatrixCSC{T}, B::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [185] +(A::CUDA.CUSPARSE.CuSparseMatrixCSC{T}, B::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [186] +(A::CUDA.CUSPARSE.CuSparseMatrixCSC{T}, B::CUDA.CUSPARSE.CuSparseMatrixCSC{T}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:197
 [187] +(lhs::CUDA.CUSPARSE.CuSparseMatrixCOO{T}, rhs::LinearAlgebra.Diagonal) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:505
 [188] +(A::CUDA.CUSPARSE.CuSparseMatrixCOO{T}, J::LinearAlgebra.UniformScaling) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:475
 [189] +(a::Tuple{Vararg{Measures.Measure, N}}, b::Tuple{Vararg{Measures.Measure, N}}) where N
     @ Measures ~/.julia/packages/Measures/PKOxJ/src/point.jl:21
 [190] +(a::Tuple{Vararg{Measures.Measure, N}} where N, b::Tuple{Vararg{Measures.Measure, N}} where N)
     @ Measures ~/.julia/packages/Measures/PKOxJ/src/point.jl:15
 [191] +(A::LinearAlgebra.Hermitian, B::LinearAlgebra.Hermitian)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/symmetric.jl:469
 [192] +(A::LinearAlgebra.Hermitian, B::LinearAlgebra.SymTridiagonal{var"#s969", V} where {var"#s969"<:Real, V<:AbstractVector{var"#s969"}})
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/symmetric.jl:488
 [193] +(H::LinearAlgebra.Hermitian, D::LinearAlgebra.Diagonal{var"#s972", V} where {var"#s972"<:Real, V<:AbstractVector{var"#s972"}})
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/diagonal.jl:197
 [194] +(A::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::SparseArrays.AbstractSparseMatrix)
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:15
 [195] +(A::LinearAlgebra.Hermitian, B::SparseArrays.AbstractSparseMatrix)
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:18
 [196] +(A::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Symmetric{<:Real, <:SparseArrays.AbstractSparseMatrix})
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:26
 [197] +(A::LinearAlgebra.Hermitian, B::LinearAlgebra.Symmetric{var"#s972", S} where {var"#s972"<:Real, S<:(AbstractMatrix{<:var"#s972"})})
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/symmetric.jl:483
 [198] +(A::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix})
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/SparseArrays/src/linalg.jl:24
 [199] +(A::LinearAlgebra.Hermitian{T, <:GPUArraysCore.AbstractGPUMatrix}, J::LinearAlgebra.UniformScaling{<:Complex}) where T
     @ GPUArrays ~/.julia/packages/GPUArrays/dAUOE/src/host/uniformscaling.jl:72
 [200] +(A::LinearAlgebra.Hermitian, J::LinearAlgebra.UniformScaling{<:Complex})
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/uniformscaling.jl:195
 [201] +(A::LinearAlgebra.Hermitian{T, <:GPUArraysCore.AbstractGPUMatrix}, J::LinearAlgebra.UniformScaling) where T
     @ GPUArrays ~/.julia/packages/GPUArrays/dAUOE/src/host/uniformscaling.jl:53
 [202] +(x::Dates.Instant)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:4
 [203] +(x::Dates.AbstractTime, y::Missing)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:88
 [204] +(z::Complex, w::Complex)
     @ complex.jl:291
 [205] +(x::AbstractIrrational, y::AbstractIrrational)
     @ irrationals.jl:161
 [206] +(A::BitArray, B::BitArray)
     @ bitarray.jl:1184
 [207] +(a::CEnum.Cenum{T}, b::S) where {T<:Integer, S<:Integer}
     @ CEnum ~/.julia/packages/CEnum/Bqafi/src/operators.jl:9
 [208] +(a::CEnum.Cenum{T}, b::CEnum.Cenum{S}) where {T<:Integer, S<:Integer}
     @ CEnum ~/.julia/packages/CEnum/Bqafi/src/operators.jl:5
 [209] +(D::LinearAlgebra.Diagonal, S::LinearAlgebra.Symmetric)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/diagonal.jl:188
 [210] +(lhs::LinearAlgebra.Diagonal, rhs::CUDA.CUSPARSE.CuSparseMatrixCOO{T}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:502
 [211] +(D::LinearAlgebra.Diagonal{var"#s972", V} where {var"#s972"<:Real, V<:AbstractVector{var"#s972"}}, H::LinearAlgebra.Hermitian)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/diagonal.jl:194
 [212] +(x::LinearAlgebra.Diagonal, H::LinearAlgebra.UpperHessenberg)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:112
 [213] +(lhs::LinearAlgebra.Diagonal, rhs::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCOO{T}}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:502
 [214] +(lhs::LinearAlgebra.Diagonal, rhs::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:502
 [215] +(lhs::LinearAlgebra.Diagonal, rhs::LinearAlgebra.Adjoint{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:502
 [216] +(Da::LinearAlgebra.Diagonal, Db::LinearAlgebra.Diagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/diagonal.jl:184
 [217] +(A::LinearAlgebra.Diagonal, B::LinearAlgebra.Tridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:168
 [218] +(A::LinearAlgebra.Diagonal, B::LinearAlgebra.SymTridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:140
 [219] +(A::LinearAlgebra.Diagonal{var"#s972", V} where {var"#s972"<:Number, V<:AbstractVector{var"#s972"}}, B::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:246
 [220] +(lhs::LinearAlgebra.Diagonal, rhs::CUDA.CUSPARSE.CuSparseMatrixCSC{T}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:502
 [221] +(A::LinearAlgebra.Diagonal, B::LinearAlgebra.Bidiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:130
 [222] +(lhs::LinearAlgebra.Diagonal, rhs::CUDA.CUSPARSE.CuSparseMatrixCSR{T}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:502
 [223] +(lhs::LinearAlgebra.Diagonal, rhs::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSR{T}}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:502
 [224] +(lhs::LinearAlgebra.Diagonal, rhs::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCSC{T}}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:502
 [225] +(lhs::LinearAlgebra.Diagonal, rhs::LinearAlgebra.Transpose{T, <:CUDA.CUSPARSE.CuSparseMatrixCOO{T}}) where T
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:502
 [226] +(A::LinearAlgebra.LowerTriangular, B::LinearAlgebra.LowerTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/triangular.jl:643
 [227] +(A::LinearAlgebra.LowerTriangular, B::LinearAlgebra.UnitLowerTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/triangular.jl:645
 [228] +(A::LinearAlgebra.AbstractTriangular, B::LinearAlgebra.AbstractTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/triangular.jl:650
 [229] +(A::LinearAlgebra.LowerTriangular, B::LinearAlgebra.Bidiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/special.jl:91
 [230] +(A::LinearAlgebra.LowerTriangular{T, <:GPUArraysCore.AbstractGPUMatrix}, J::LinearAlgebra.UniformScaling) where T
     @ GPUArrays ~/.julia/packages/GPUArrays/dAUOE/src/host/uniformscaling.jl:53
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
 [238] +(p::SpecialFunctions.SimplePoly{S}, q::SpecialFunctions.SimplePoly{T}) where {S, T}
     @ SpecialFunctions ~/.julia/packages/SpecialFunctions/QH8rV/src/expint.jl:11
 [239] +(A::CUDA.CUSPARSE.CuSparseVector{T}, B::CUDA.CUSPARSE.CuSparseVector{T}) where T<:Union{Float32, Float64, ComplexF64, ComplexF32}
     @ CUDA.CUSPARSE ~/.julia/packages/CUDA/nbRJk/lib/cusparse/interfaces.jl:202
 [240] +(x::SparseArrays.AbstractSparseVector, y::SparseArrays.AbstractSparseVector)
     @ SparseArrays /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/SparseArrays/src/sparsevector.jl:1516
 [241] +(A::AbstractArray, B::AbstractArray)
     @ arraymath.jl:6
 [242] +(F::LinearAlgebra.Hessenberg, J::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/hessenberg.jl:647
 [243] +(x::Rational, y::Integer)
     @ rational.jl:327
 [244] +(x::BFloat16s.BFloat16, y::BFloat16s.BFloat16)
     @ BFloat16s ~/.julia/packages/BFloat16s/uUmkF/src/bfloat16.jl:146
 [245] +(x::BigFloat, c::Union{UInt16, UInt32, UInt64, UInt8})
     @ Base.MPFR mpfr.jl:402
 [246] +(x::BigFloat, c::Union{Int16, Int32, Int64, Int8})
     @ Base.MPFR mpfr.jl:410
 [247] +(x::BigFloat, c::Union{Float16, Float32, Float64})
     @ Base.MPFR mpfr.jl:418
 [248] +(x::BigFloat, y::BigFloat)
     @ Base.MPFR mpfr.jl:395
 [249] +(x::BigFloat, c::BigInt)
     @ Base.MPFR mpfr.jl:426
 [250] +(a::BigFloat, b::BigFloat, c::BigFloat)
     @ Base.MPFR mpfr.jl:567
 [251] +(a::BigFloat, b::BigFloat, c::BigFloat, d::BigFloat)
     @ Base.MPFR mpfr.jl:573
 [252] +(a::BigFloat, b::BigFloat, c::BigFloat, d::BigFloat, e::BigFloat)
     @ Base.MPFR mpfr.jl:580
 [253] +(a::Pkg.Resolve.VersionWeight, b::Pkg.Resolve.VersionWeight)
     @ Pkg.Resolve /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Pkg/src/Resolve/versionweights.jl:22
 [254] +(x::Bool)
     @ bool.jl:163
 [255] +(x::Integer, y::Ptr)
     @ pointer.jl:169
 [256] +(y::Integer, x::Rational)
     @ rational.jl:334
 [257] +(x::Integer, y::AbstractChar)
     @ char.jl:247
 [258] +(a::T, b::CEnum.Cenum{S}) where {T<:Integer, S<:Integer}
     @ CEnum ~/.julia/packages/CEnum/Bqafi/src/operators.jl:13
 [259] +(x::Integer, y::Core.LLVMPtr)
     @ LLVM.Interop ~/.julia/packages/LLVM/vIbji/src/interop/pointer.jl:116
 [260] +(a::Integer, b::SentinelArrays.ChainedVectorIndex)
     @ SentinelArrays ~/.julia/packages/SentinelArrays/1kRo4/src/chainedvector.jl:208
 [261] +(x::Integer, y::CUDA.CuArrayPtr)
     @ CUDA ~/.julia/packages/CUDA/nbRJk/src/pointer.jl:187
 [262] +(x::Integer, y::CUDA.CuPtr)
     @ CUDA ~/.julia/packages/CUDA/nbRJk/src/pointer.jl:78
 [263] +(x::Bool, y::T) where T<:AbstractFloat
     @ bool.jl:173
 [264] +(x::Bool, y::Bool)
     @ bool.jl:166
 [265] +(x::Bool, z::Complex{Bool})
     @ complex.jl:302
 [266] +(x::Real, z::Complex{Bool})
     @ complex.jl:316
 [267] +(x::Bool, z::Complex)
     @ complex.jl:309
 [268] +(x::Real, z::Complex)
     @ complex.jl:328
 [269] +(dt::Dates.Date, t::Dates.Time)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:19
 [270] +(dt::Dates.Date, y::Dates.Year)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:27
 [271] +(dt::Dates.Date, z::Dates.Month)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:54
 [272] +(x::Dates.Date, y::Dates.Quarter)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:73
 [273] +(x::Dates.Date, y::Dates.Week)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:77
 [274] +(x::Dates.Date, y::Dates.Day)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:79
 [275] +(B::BitMatrix, J::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/uniformscaling.jl:151
 [276] +(A::AbstractMatrix, J::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/LinearAlgebra/src/uniformscaling.jl:214
 [277] +(x::AbstractArray{<:Number})
     @ abstractarraymath.jl:220
 [278] +(a::OpenSSL.BigNum, b::OpenSSL.BigNum)
     @ OpenSSL ~/.julia/packages/OpenSSL/8wxMC/src/OpenSSL.jl:747
 [279] +(::Missing)
     @ missing.jl:101
 [280] +(::Missing, ::Number)
     @ missing.jl:123
 [281] +(x::Missing, y::Dates.AbstractTime)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:89
 [282] +(::Missing, ::Missing)
     @ missing.jl:122
 [283] +(self::TimerOutputs.TimeData, other::TimerOutputs.TimeData)
     @ TimerOutputs ~/.julia/packages/TimerOutputs/RsWnF/src/TimerOutput.jl:14
 [284] +(a::Pkg.Resolve.FieldValue, b::Pkg.Resolve.FieldValue)
     @ Pkg.Resolve /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Pkg/src/Resolve/fieldvalues.jl:43
 [285] +(dt::Dates.DateTime, y::Dates.Year)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:23
 [286] +(dt::Dates.DateTime, z::Dates.Month)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:47
 [287] +(x::Dates.DateTime, y::Dates.Quarter)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:75
 [288] +(x::Dates.DateTime, y::Dates.Period)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/arithmetic.jl:81
 [289] +(z::Complex{Bool}, x::Bool)
     @ complex.jl:303
 [290] +(z::Complex, x::Bool)
     @ complex.jl:310
 [291] +(z::Complex{Bool}, x::Real)
     @ complex.jl:317
 [292] +(z::Complex)
     @ complex.jl:289
 [293] +(z::Complex, x::Real)
     @ complex.jl:329
 [294] +(x::Dates.CompoundPeriod, y::Dates.Period)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/periods.jl:332
 [295] +(x::Dates.CompoundPeriod, y::Dates.TimeType)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/periods.jl:362
 [296] +(x::Dates.CompoundPeriod, y::Dates.CompoundPeriod)
     @ Dates /opt/hostedtoolcache/julia/1.9.3/x64/share/julia/stdlib/v1.9/Dates/src/periods.jl:334
 [297] +(x::BigInt, c::Union{UInt16, UInt32, UInt64, UInt8})
     @ Base.GMP gmp.jl:538
 [298] +(x::BigInt, c::Union{Int16, Int32, Int64, Int8})
     @ Base.GMP gmp.jl:544
 [299] +(x::BigInt, y::BigInt)
     @ Base.GMP gmp.jl:490
 [300] +(a::BigInt, b::BigInt, c::BigInt)
     @ Base.GMP gmp.jl:530
 [301] +(a::BigInt, b::BigInt, c::BigInt, d::BigInt)
     @ Base.GMP gmp.jl:531
 [302] +(a::BigInt, b::BigInt, c::BigInt, d::BigInt, e::BigInt)
     @ Base.GMP gmp.jl:532
 [303] +(x::BigInt, y::BigInt, rest::BigInt...)
     @ Base.GMP gmp.jl:666
 [304] +(a::Integer, b::Integer)
     @ int.jl:1038
 [305] +(c::BigInt, x::BigFloat)
     @ Base.MPFR mpfr.jl:431
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