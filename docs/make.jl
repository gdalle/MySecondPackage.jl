using MySecondPackage
using Documenter

DocMeta.setdocmeta!(MySecondPackage, :DocTestSetup, :(using MySecondPackage); recursive=true)

makedocs(;
    modules=[MySecondPackage],
    authors="Guillaume Dalle <22795598+gdalle@users.noreply.github.com> and contributors",
    repo="https://github.com/gdalle/MySecondPackage.jl/blob/{commit}{path}#{line}",
    sitename="MySecondPackage.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://gdalle.github.io/MySecondPackage.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/gdalle/MySecondPackage.jl",
    devbranch="main",
)
