using OpenBLAS32
using Documenter

DocMeta.setdocmeta!(OpenBLAS32, :DocTestSetup, :(using OpenBLAS32); recursive=true)

makedocs(;
    modules=[OpenBLAS32],
    authors="Viral B. Shah <ViralBShah@users.noreply.github.com> and contributors",
    repo="https://github.com/JuliaLinearAlgebra/OpenBLAS32.jl/blob/{commit}{path}#{line}",
    sitename="OpenBLAS32.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://JuliaLinearAlgebra.github.io/OpenBLAS32.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/JuliaLinearAlgebra/OpenBLAS32.jl",
    devbranch="main",
)
