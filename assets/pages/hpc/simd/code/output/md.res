# 208 methods for generic function "+" from Base:
   [1] +(level::Base.CoreLogging.LogLevel, inc::Integer)
     @ Base.CoreLogging logging.jl:131
   [2] +(x::Bool, z::Complex{Bool})
     @ complex.jl:305
   [3] +(x::Bool, y::Bool)
     @ bool.jl:166
   [4] +(x::Bool)
     @ bool.jl:163
   [5] +(x::Bool, z::Complex)
     @ complex.jl:312
   [6] +(x::Real, z::Complex{Bool})
     @ complex.jl:319
   [7] +(x::Bool, y::T) where T<:AbstractFloat
     @ bool.jl:173
   [8] +(z::Complex{Bool}, x::Bool)
     @ complex.jl:306
   [9] +(z::Complex{Bool}, x::Real)
     @ complex.jl:320
  [10] +(z::Complex, x::Bool)
     @ complex.jl:313
  [11] +(t::Dates.Time, dt::Dates.Date)
     @ Dates /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/Dates/src/arithmetic.jl:22
  [12] +(x::Dates.Time, y::Dates.TimePeriod)
     @ Dates /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/Dates/src/arithmetic.jl:85
  [13] +(a::Pkg.Resolve.FieldValue, b::Pkg.Resolve.FieldValue)
     @ Pkg.Resolve /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/Pkg/src/Resolve/fieldvalues.jl:43
  [14] +(x::Rational{BigInt}, y::Rational{BigInt})
     @ Base.GMP.MPQ gmp.jl:1061
  [15] +(x::Dates.DateTime, y::Dates.Quarter)
     @ Dates /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/Dates/src/arithmetic.jl:77
  [16] +(dt::Dates.DateTime, z::Dates.Month)
     @ Dates /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/Dates/src/arithmetic.jl:49
  [17] +(dt::Dates.DateTime, y::Dates.Year)
     @ Dates /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/Dates/src/arithmetic.jl:25
  [18] +(x::Dates.DateTime, y::Dates.Period)
     @ Dates /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/Dates/src/arithmetic.jl:83
  [19] +(x::BigFloat, c::BigInt)
     @ Base.MPFR mpfr.jl:463
  [20] +(a::BigFloat, b::BigFloat, c::BigFloat, d::BigFloat, e::BigFloat)
     @ Base.MPFR mpfr.jl:619
  [21] +(x::BigFloat, y::BigFloat)
     @ Base.MPFR mpfr.jl:432
  [22] +(a::BigFloat, b::BigFloat, c::BigFloat)
     @ Base.MPFR mpfr.jl:606
  [23] +(a::BigFloat, b::BigFloat, c::BigFloat, d::BigFloat)
     @ Base.MPFR mpfr.jl:612
  [24] +(x::BigFloat, c::Union{UInt16, UInt32, UInt64, UInt8})
     @ Base.MPFR mpfr.jl:439
  [25] +(x::BigFloat, c::Union{Int16, Int32, Int64, Int8})
     @ Base.MPFR mpfr.jl:447
  [26] +(x::BigFloat, c::Union{Float16, Float32, Float64})
     @ Base.MPFR mpfr.jl:455
  [27] +(x::Dates.CompoundPeriod, y::Dates.CompoundPeriod)
     @ Dates /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/Dates/src/periods.jl:334
  [28] +(x::Dates.CompoundPeriod, y::Dates.TimeType)
     @ Dates /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/Dates/src/periods.jl:362
  [29] +(x::Dates.CompoundPeriod, y::Dates.Period)
     @ Dates /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/Dates/src/periods.jl:332
  [30] +(x::Dates.Date, y::Dates.Day)
     @ Dates /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/Dates/src/arithmetic.jl:81
  [31] +(x::Dates.Date, y::Dates.Week)
     @ Dates /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/Dates/src/arithmetic.jl:79
  [32] +(x::Dates.Date, y::Dates.Quarter)
     @ Dates /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/Dates/src/arithmetic.jl:75
  [33] +(dt::Dates.Date, z::Dates.Month)
     @ Dates /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/Dates/src/arithmetic.jl:56
  [34] +(dt::Dates.Date, y::Dates.Year)
     @ Dates /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/Dates/src/arithmetic.jl:29
  [35] +(dt::Dates.Date, t::Dates.Time)
     @ Dates /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/Dates/src/arithmetic.jl:21
  [36] +(a::OpenSSL.BigNum, b::OpenSSL.BigNum)
     @ OpenSSL ~/.julia/packages/OpenSSL/8wxMC/src/OpenSSL.jl:747
  [37] +(a::Pkg.Resolve.VersionWeight, b::Pkg.Resolve.VersionWeight)
     @ Pkg.Resolve /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/Pkg/src/Resolve/versionweights.jl:22
  [38] +(B::BitMatrix, J::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/uniformscaling.jl:151
  [39] +(x::BigInt, y::BigInt)
     @ Base.GMP gmp.jl:501
  [40] +(a::BigInt, b::BigInt, c::BigInt)
     @ Base.GMP gmp.jl:541
  [41] +(a::BigInt, b::BigInt, c::BigInt, d::BigInt)
     @ Base.GMP gmp.jl:542
  [42] +(a::BigInt, b::BigInt, c::BigInt, d::BigInt, e::BigInt)
     @ Base.GMP gmp.jl:543
  [43] +(x::BigInt, y::BigInt, rest::BigInt...)
     @ Base.GMP gmp.jl:683
  [44] +(c::BigInt, x::BigFloat)
     @ Base.MPFR mpfr.jl:468
  [45] +(x::BigInt, c::Union{UInt16, UInt32, UInt64, UInt8})
     @ Base.GMP gmp.jl:549
  [46] +(x::BigInt, c::Union{Int16, Int32, Int64, Int8})
     @ Base.GMP gmp.jl:555
  [47] +(::Missing, ::Missing)
     @ missing.jl:122
  [48] +(::Missing)
     @ missing.jl:101
  [49] +(x::Missing, y::Dates.AbstractTime)
     @ Dates /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/Dates/src/arithmetic.jl:91
  [50] +(::Missing, ::Number)
     @ missing.jl:123
  [51] +(index1::CartesianIndex{N}, index2::CartesianIndex{N}) where N
     @ Base.IteratorsMD multidimensional.jl:119
  [52] +(A::Array, B::SparseArrays.AbstractSparseMatrixCSC)
     @ SparseArrays /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/SparseArrays/src/sparsematrix.jl:2246
  [53] +(A::Array, Bs::Array...)
     @ arraymath.jl:12
  [54] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.Tridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/special.jl:202
  [55] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.Bidiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/bidiag.jl:390
  [56] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/special.jl:242
  [57] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.SymTridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/special.jl:217
  [58] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.UpperTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/special.jl:99
  [59] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.Diagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/special.jl:151
  [60] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.LowerTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/special.jl:99
  [61] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.UnitUpperTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/special.jl:99
  [62] +(A::LinearAlgebra.Bidiagonal, B::LinearAlgebra.UnitLowerTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/special.jl:99
  [63] +(x::LinearAlgebra.Bidiagonal, H::LinearAlgebra.UpperHessenberg)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/hessenberg.jl:120
  [64] +(A::SparseArrays.AbstractSparseMatrixCSC, B::SparseArrays.AbstractSparseMatrixCSC)
     @ SparseArrays /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/SparseArrays/src/sparsematrix.jl:2242
  [65] +(A::SparseArrays.AbstractSparseMatrixCSC, B::Array)
     @ SparseArrays /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/SparseArrays/src/sparsematrix.jl:2245
  [66] +(A::SparseArrays.AbstractSparseMatrixCSC{Tv, Ti}, J::LinearAlgebra.UniformScaling{T}) where {T<:Number, Tv, Ti}
     @ SparseArrays /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/SparseArrays/src/sparsematrix.jl:4275
  [67] +(H::LinearAlgebra.Hermitian, D::LinearAlgebra.Diagonal{var"#s988", V} where {var"#s988"<:Real, V<:AbstractVector{var"#s988"}})
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/diagonal.jl:238
  [68] +(A::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::SparseArrays.AbstractSparseMatrix)
     @ SparseArrays /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/SparseArrays/src/linalg.jl:16
  [69] +(A::LinearAlgebra.Hermitian, B::SparseArrays.AbstractSparseMatrix)
     @ SparseArrays /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/SparseArrays/src/linalg.jl:19
  [70] +(A::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Symmetric{<:Real, <:SparseArrays.AbstractSparseMatrix})
     @ SparseArrays /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/SparseArrays/src/linalg.jl:27
  [71] +(A::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix})
     @ SparseArrays /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/SparseArrays/src/linalg.jl:25
  [72] +(A::LinearAlgebra.Hermitian, B::LinearAlgebra.Symmetric{var"#s988", S} where {var"#s988"<:Real, S<:(AbstractMatrix{<:var"#s988"})})
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/symmetric.jl:518
  [73] +(A::LinearAlgebra.Hermitian, B::LinearAlgebra.SymTridiagonal{var"#s126", V} where {var"#s126"<:Real, V<:AbstractVector{var"#s126"}})
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/symmetric.jl:523
  [74] +(A::LinearAlgebra.Hermitian, B::LinearAlgebra.Hermitian)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/symmetric.jl:504
  [75] +(A::LinearAlgebra.Hermitian, J::LinearAlgebra.UniformScaling{<:Complex})
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/uniformscaling.jl:195
  [76] +(F::LinearAlgebra.Hessenberg, J::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/hessenberg.jl:560
  [77] +(A::LinearAlgebra.UpperTriangular, B::LinearAlgebra.Bidiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/special.jl:91
  [78] +(x::LinearAlgebra.UpperTriangular, H::LinearAlgebra.UpperHessenberg)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/hessenberg.jl:120
  [79] +(A::LinearAlgebra.UpperTriangular, B::LinearAlgebra.UnitUpperTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/triangular.jl:652
  [80] +(A::LinearAlgebra.UpperTriangular, B::LinearAlgebra.UpperTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/triangular.jl:650
  [81] +(x::LinearAlgebra.Diagonal, H::LinearAlgebra.UpperHessenberg)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/hessenberg.jl:120
  [82] +(B::LinearAlgebra.Diagonal, A::LinearAlgebra.Bidiagonal)
     @ LinearAlgebra none:0
  [83] +(D::LinearAlgebra.Diagonal, S::LinearAlgebra.Symmetric)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/diagonal.jl:229
  [84] +(Da::LinearAlgebra.Diagonal, Db::LinearAlgebra.Diagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/diagonal.jl:225
  [85] +(A::LinearAlgebra.Diagonal, B::LinearAlgebra.SymTridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/special.jl:166
  [86] +(D::LinearAlgebra.Diagonal{var"#s988", V} where {var"#s988"<:Real, V<:AbstractVector{var"#s988"}}, H::LinearAlgebra.Hermitian)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/diagonal.jl:235
  [87] +(A::LinearAlgebra.Diagonal, B::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/special.jl:247
  [88] +(A::LinearAlgebra.Diagonal, B::LinearAlgebra.Tridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/special.jl:187
  [89] +(x::Number, J::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/uniformscaling.jl:145
  [90] +(::Number, ::Missing)
     @ missing.jl:124
  [91] +(x::Number, y::Base.TwicePrecision)
     @ twiceprecision.jl:292
  [92] +(z::Complex)
     @ complex.jl:292
  [93] +(x::Rational)
     @ rational.jl:300
  [94] +(x::Number)
     @ operators.jl:524
  [95] +(z::Complex, w::Complex)
     @ complex.jl:294
  [96] +(x::AbstractIrrational, y::AbstractIrrational)
     @ irrationals.jl:161
  [97] +(c::Union{Int16, Int32, Int64, Int8}, x::BigInt)
     @ Base.GMP gmp.jl:556
  [98] +(c::Union{UInt16, UInt32, UInt64, UInt8}, x::BigInt)
     @ Base.GMP gmp.jl:550
  [99] +(x::T, y::T) where T<:Union{Int128, Int16, Int32, Int64, Int8, UInt128, UInt16, UInt32, UInt64, UInt8}
     @ int.jl:87
 [100] +(a::Integer, b::Integer)
     @ int.jl:1064
 [101] +(x::Rational, y::Rational)
     @ rational.jl:314
 [102] +(x::T, y::T) where T<:Union{Float16, Float32, Float64}
     @ float.jl:409
 [103] +(x::T, y::T) where T<:Number
     @ promotion.jl:507
 [104] +(z::Complex, x::Real)
     @ complex.jl:332
 [105] +(x::Real, z::Complex)
     @ complex.jl:331
 [106] +(y::Integer, x::Rational)
     @ rational.jl:350
 [107] +(y::AbstractFloat, x::Bool)
     @ bool.jl:176
 [108] +(x::Rational, y::Integer)
     @ rational.jl:343
 [109] +(c::Union{Float16, Float32, Float64}, x::BigFloat)
     @ Base.MPFR mpfr.jl:460
 [110] +(c::Union{Int16, Int32, Int64, Int8}, x::BigFloat)
     @ Base.MPFR mpfr.jl:452
 [111] +(c::Union{UInt16, UInt32, UInt64, UInt8}, x::BigFloat)
     @ Base.MPFR mpfr.jl:444
 [112] +(x::Number, y::Number)
     @ promotion.jl:422
 [113] +(A::LinearAlgebra.UnitUpperTriangular, B::LinearAlgebra.Bidiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/special.jl:91
 [114] +(x::LinearAlgebra.UnitUpperTriangular, H::LinearAlgebra.UpperHessenberg)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/hessenberg.jl:120
 [115] +(UL::LinearAlgebra.UnitUpperTriangular, J::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/uniformscaling.jl:181
 [116] +(A::LinearAlgebra.UnitUpperTriangular, B::LinearAlgebra.UnitUpperTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/triangular.jl:656
 [117] +(A::LinearAlgebra.UnitUpperTriangular, B::LinearAlgebra.UpperTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/triangular.jl:654
 [118] +(A::LinearAlgebra.UnitLowerTriangular, B::LinearAlgebra.Bidiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/special.jl:91
 [119] +(UL::LinearAlgebra.UnitLowerTriangular, J::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/uniformscaling.jl:181
 [120] +(A::LinearAlgebra.UnitLowerTriangular, B::LinearAlgebra.UnitLowerTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/triangular.jl:657
 [121] +(A::LinearAlgebra.UnitLowerTriangular, B::LinearAlgebra.LowerTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/triangular.jl:655
 [122] +(A::BitArray, B::BitArray)
     @ bitarray.jl:1184
 [123] +(x::Ptr, y::Integer)
     @ pointer.jl:282
 [124] +(x::T, y::Integer) where T<:AbstractChar
     @ char.jl:237
 [125] +(r1::LinRange{T}, r2::LinRange{T}) where T
     @ range.jl:1461
 [126] +(A::LinearAlgebra.Tridiagonal, B::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/special.jl:232
 [127] +(B::LinearAlgebra.Tridiagonal, A::LinearAlgebra.Bidiagonal)
     @ LinearAlgebra none:0
 [128] +(B::LinearAlgebra.Tridiagonal, A::LinearAlgebra.Diagonal)
     @ LinearAlgebra none:0
 [129] +(A::LinearAlgebra.Tridiagonal, B::LinearAlgebra.SymTridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/special.jl:183
 [130] +(x::LinearAlgebra.Tridiagonal, H::LinearAlgebra.UpperHessenberg)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/hessenberg.jl:120
 [131] +(A::LinearAlgebra.Tridiagonal, B::LinearAlgebra.Tridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/tridiag.jl:739
 [132] +(J::LinearAlgebra.UniformScaling, B::BitMatrix)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/uniformscaling.jl:152
 [133] +(B::LinearAlgebra.UniformScaling, A::LinearAlgebra.Tridiagonal)
     @ LinearAlgebra none:0
 [134] +(B::LinearAlgebra.UniformScaling, A::LinearAlgebra.Bidiagonal)
     @ LinearAlgebra none:0
 [135] +(x::LinearAlgebra.UniformScaling, H::LinearAlgebra.UpperHessenberg)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/hessenberg.jl:120
 [136] +(J::LinearAlgebra.UniformScaling{T}, A::SparseArrays.AbstractSparseMatrixCSC{Tv, Ti}) where {T<:Number, Tv, Ti}
     @ SparseArrays /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/SparseArrays/src/sparsematrix.jl:4277
 [137] +(J::LinearAlgebra.UniformScaling, F::LinearAlgebra.Hessenberg)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/hessenberg.jl:561
 [138] +(B::LinearAlgebra.UniformScaling, A::LinearAlgebra.SymTridiagonal)
     @ LinearAlgebra none:0
 [139] +(B::LinearAlgebra.UniformScaling, A::LinearAlgebra.Diagonal)
     @ LinearAlgebra none:0
 [140] +(J::LinearAlgebra.UniformScaling, x::Number)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/uniformscaling.jl:144
 [141] +(J::LinearAlgebra.UniformScaling, A::AbstractMatrix)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/uniformscaling.jl:153
 [142] +(J1::LinearAlgebra.UniformScaling, J2::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/uniformscaling.jl:150
 [143] +(J::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/uniformscaling.jl:149
 [144] +(x::Integer, y::AbstractChar)
     @ char.jl:247
 [145] +(x::Integer, y::Ptr)
     @ pointer.jl:284
 [146] +(x::Dates.Instant)
     @ Dates /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/Dates/src/arithmetic.jl:4
 [147] +(x::Dates.AbstractTime, y::Missing)
     @ Dates /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/Dates/src/arithmetic.jl:90
 [148] +(x::Base.TwicePrecision{T}, y::Base.TwicePrecision{T}) where T
     @ twiceprecision.jl:294
 [149] +(x::Base.TwicePrecision, y::Base.TwicePrecision)
     @ twiceprecision.jl:299
 [150] +(x::Base.TwicePrecision, y::Number)
     @ twiceprecision.jl:288
 [151] +(B::LinearAlgebra.SymTridiagonal, A::LinearAlgebra.Diagonal)
     @ LinearAlgebra none:0
 [152] +(B::LinearAlgebra.SymTridiagonal, A::LinearAlgebra.Bidiagonal)
     @ LinearAlgebra none:0
 [153] +(x::LinearAlgebra.SymTridiagonal, H::LinearAlgebra.UpperHessenberg)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/hessenberg.jl:120
 [154] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.Symmetric)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/symmetric.jl:520
 [155] +(A::LinearAlgebra.SymTridiagonal{var"#s127", V} where {var"#s127"<:Real, V<:AbstractVector{var"#s127"}}, B::LinearAlgebra.Hermitian)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/symmetric.jl:522
 [156] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.SymTridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/tridiag.jl:210
 [157] +(A::LinearAlgebra.SymTridiagonal, B::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/special.jl:237
 [158] +(B::LinearAlgebra.SymTridiagonal, A::LinearAlgebra.Tridiagonal)
     @ LinearAlgebra none:0
 [159] +(r1::OrdinalRange, r2::OrdinalRange)
     @ range.jl:1454
 [160] +(y::Dates.TimeType, x::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}})
     @ Dates /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/Dates/src/deprecated.jl:18
 [161] +(x::Dates.TimeType)
     @ Dates /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/Dates/src/arithmetic.jl:8
 [162] +(x::Dates.TimeType, y::Dates.CompoundPeriod)
     @ Dates /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/Dates/src/periods.jl:356
 [163] +(a::Dates.TimeType, b::Dates.Period, c::Dates.Period)
     @ Dates /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/Dates/src/periods.jl:353
 [164] +(a::Dates.TimeType, b::Dates.Period, c::Dates.Period, d::Dates.Period...)
     @ Dates /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/Dates/src/periods.jl:354
 [165] +(A::LinearAlgebra.LowerTriangular, B::LinearAlgebra.Bidiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/special.jl:91
 [166] +(A::LinearAlgebra.LowerTriangular, B::LinearAlgebra.UnitLowerTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/triangular.jl:653
 [167] +(A::LinearAlgebra.LowerTriangular, B::LinearAlgebra.LowerTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/triangular.jl:651
 [168] +(r::AbstractRange{<:Dates.TimeType}, x::Dates.Period)
     @ Dates /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/Dates/src/ranges.jl:65
 [169] +(x::Dates.Period, r::AbstractRange{<:Dates.TimeType})
     @ Dates /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/Dates/src/ranges.jl:64
 [170] +(y::Dates.Period, x::Dates.TimeType)
     @ Dates /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/Dates/src/arithmetic.jl:87
 [171] +(y::Dates.Period, x::Dates.CompoundPeriod)
     @ Dates /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/Dates/src/periods.jl:333
 [172] +(x::P, y::P) where P<:Dates.Period
     @ Dates /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/Dates/src/periods.jl:75
 [173] +(x::Dates.Period, y::Dates.Period)
     @ Dates /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/Dates/src/periods.jl:331
 [174] +(A::LinearAlgebra.AbstractTriangular, B::LinearAlgebra.AbstractTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/triangular.jl:658
 [175] +(S::LinearAlgebra.Symmetric, D::LinearAlgebra.Diagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/diagonal.jl:232
 [176] +(A::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::SparseArrays.AbstractSparseMatrix)
     @ SparseArrays /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/SparseArrays/src/linalg.jl:16
 [177] +(A::LinearAlgebra.Symmetric, B::SparseArrays.AbstractSparseMatrix)
     @ SparseArrays /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/SparseArrays/src/linalg.jl:19
 [178] +(A::LinearAlgebra.Symmetric{<:Real, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix})
     @ SparseArrays /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/SparseArrays/src/linalg.jl:26
 [179] +(A::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix}, B::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix})
     @ SparseArrays /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/SparseArrays/src/linalg.jl:24
 [180] +(A::LinearAlgebra.Symmetric{var"#s128", S} where {var"#s128"<:Real, S<:(AbstractMatrix{<:var"#s128"})}, B::LinearAlgebra.Hermitian)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/symmetric.jl:519
 [181] +(A::LinearAlgebra.Symmetric, B::LinearAlgebra.SymTridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/symmetric.jl:521
 [182] +(A::LinearAlgebra.Symmetric, B::LinearAlgebra.Symmetric)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/symmetric.jl:504
 [183] +(x::SparseArrays.AbstractSparseVector, y::SparseArrays.AbstractSparseVector)
     @ SparseArrays /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/SparseArrays/src/sparsevector.jl:1562
 [184] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Hermitian{<:Any, <:SparseArrays.AbstractSparseMatrix})
     @ SparseArrays /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/SparseArrays/src/linalg.jl:15
 [185] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Hermitian)
     @ SparseArrays /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/SparseArrays/src/linalg.jl:18
 [186] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Symmetric{<:Any, <:SparseArrays.AbstractSparseMatrix})
     @ SparseArrays /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/SparseArrays/src/linalg.jl:15
 [187] +(A::SparseArrays.AbstractSparseMatrix, B::LinearAlgebra.Symmetric)
     @ SparseArrays /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/SparseArrays/src/linalg.jl:18
 [188] +(x::AbstractArray{<:Dates.TimeType}, y::Union{Dates.CompoundPeriod, Dates.Period})
     @ Dates /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/Dates/src/deprecated.jl:6
 [189] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/hessenberg.jl:119
 [190] +(A::AbstractMatrix, J::LinearAlgebra.UniformScaling)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/uniformscaling.jl:214
 [191] +(r1::StepRangeLen{T, R}, r2::StepRangeLen{T, R}) where {R<:Base.TwicePrecision, T}
     @ twiceprecision.jl:626
 [192] +(r1::StepRangeLen{T, S}, r2::StepRangeLen{T, S}) where {T, S}
     @ range.jl:1477
 [193] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.Tridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/hessenberg.jl:119
 [194] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.Bidiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/hessenberg.jl:119
 [195] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.Diagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/hessenberg.jl:119
 [196] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.SymTridiagonal)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/hessenberg.jl:119
 [197] +(A::LinearAlgebra.UpperHessenberg, B::LinearAlgebra.UpperHessenberg)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/hessenberg.jl:112
 [198] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.UnitUpperTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/hessenberg.jl:119
 [199] +(H::LinearAlgebra.UpperHessenberg, x::LinearAlgebra.UpperTriangular)
     @ LinearAlgebra /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/LinearAlgebra/src/hessenberg.jl:119
 [200] +(X::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}}, Y::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}})
     @ Dates /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/Dates/src/deprecated.jl:62
 [201] +(r1::Union{LinRange, OrdinalRange, StepRangeLen}, r2::Union{LinRange, OrdinalRange, StepRangeLen})
     @ range.jl:1470
 [202] +(A::AbstractArray, B::AbstractArray)
     @ arraymath.jl:6
 [203] +(x::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}})
     @ Dates /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/Dates/src/deprecated.jl:55
 [204] +(x::AbstractArray{<:Number})
     @ abstractarraymath.jl:220
 [205] +(y::Union{Dates.CompoundPeriod, Dates.Period}, x::AbstractArray{<:Dates.TimeType})
     @ Dates /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/Dates/src/deprecated.jl:14
 [206] +(x::StridedArray{<:Union{Dates.CompoundPeriod, Dates.Period}}, y::Dates.TimeType)
     @ Dates /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/Dates/src/deprecated.jl:10
 [207] +(x::Union{Dates.CompoundPeriod, Dates.Period})
     @ Dates /opt/hostedtoolcache/julia/1.10.0/x64/share/julia/stdlib/v1.10/Dates/src/periods.jl:342
 [208] +(a, b, c, xs...)
     @ operators.jl:587