
toMd =
function(r, out = NA)
{
    md = sprintf("```{r}\n%s\n```", trimws(r))
    if(length(out) && !is.na(out)) {
        cat(md, file = out, sep = "\n\n")
        out
    } else
        md
}

toR =
function(r, out)    
{
    cat(trimws(r), file = out, sep = "\n\n")
}

