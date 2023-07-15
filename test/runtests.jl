using OpenBLAS32, LinearAlgebra
using Test

@testset "OpenBLAS32.jl" begin
    # Write your tests here.
    function testswap(x::Vector{Float64}, y::Vector{Float64})
        ccall((:dswap_, BLAS.libblas), Cvoid,
              (Ref{Int32}, Ptr{Float64}, Ref{Int32}, Ptr{Float64}, Ref{Int32}),
              size(x,1), x, 1, y, 1)
    end

    x = [1.0, 1.0]
    y = [2.0, 2.0]
    testswap(x,y)
    @test x == [2.0,2.0]
    @test y == [1.0,1.0]

    if Base.USE_BLAS64
        function testswap64(x::Vector{Float64}, y::Vector{Float64})
            ccall((:dswap_64_, BLAS.libblas), Cvoid,
                  (Ref{Int64}, Ptr{Float64}, Ref{Int64}, Ptr{Float64}, Ref{Int64}),
                  size(x,1), x, 1, y, 1)
        end

        testswap64(x,y)
        @test x == [1.0,1.0]
        @test y == [2.0,2.0]
    end

end
