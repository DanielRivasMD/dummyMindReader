using dummyMindReader
using Documenter

DocMeta.setdocmeta!(dummyMindReader, :DocTestSetup, :(using dummyMindReader); recursive=true)

makedocs(;
    modules=[dummyMindReader],
    authors="DanielRivasMD <danielrivasmd@gmail.com> and contributors",
    repo="https://github.com/DanielRivasMD/dummyMindReader.jl/blob/{commit}{path}#{line}",
    sitename="dummyMindReader.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://DanielRivasMD.github.io/dummyMindReader.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/DanielRivasMD/dummyMindReader.jl",
)
