using Documenter, ChebyshevTransforms

DocMeta.setdocmeta!(
    ChebyshevTransforms,
    :DocTestSetup,
    quote
        using ChebyshevTransforms
    end
)

makedocs(
    sitename = "ChebyshevTransforms.jl",
    modules=[ChebyshevTransforms],
    pages = [
        "Home" => "index.md",
        "Padua Transforms" => "padua_transforms.md"
    ],
    format = Documenter.HTML(prettyurls = get(ENV, "CI", nothing) == "true")
)

deploydocs(
    repo   = "github.com/Luapulu/ChebyshevTransforms.jl"
)
