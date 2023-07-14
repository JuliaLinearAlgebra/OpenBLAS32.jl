# OpenBLAS32.jl

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://JuliaLinearAlgebra.github.io/OpenBLAS32.jl/stable/)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://JuliaLinearAlgebra.github.io/OpenBLAS32.jl/dev/)
[![Build Status](https://github.com/JuliaLinearAlgebra/OpenBLAS32.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/JuliaLinearAlgebra/OpenBLAS32.jl/actions/workflows/CI.yml?query=branch%3Amain)

A simple package that depends on OpenBLAS32_jll, and sets up the
forwarding for LP64 BLAS symbols on 64-bit architectures using
`libblastrampoline` that ships with Julia. On 32-bit architectures,
this package does nothing.

This package makes the following possible:
1. JLLs of libraries need an LP64 BLAS can now link to libblastrampoline
2. Users who want to use an LP64 BLAS will use libblastrampoline JLLs and include a dependency on OpenBLAS32.jl
3. LP64 OpenBLAS will thus work out of the box as before
4. However, since the underlying libraries are linked against libblastrampoline, users can also switch to different BLAS provider such as MKL or AppleAccelerate
