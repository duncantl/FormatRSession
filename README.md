This package contains a script and some functions that I have used to
take the transcript of an R session  (e.g., during a class I teach interactively/with live coding)
and extract the top-level expressions/commands and/or the
 output from the commands.

I use this after lectures to create a .R file, a .md file or an Rdb (R docbook) file and then HTML
from the R session.
 

## Get the Code/Commands from a Session
 
 ```r
script = "RSession"
k = getCode(script)
```

We can then parse the expressions, evaluate them, analyze them (e.g., with 
[CodeDepends](https://github.com/duncantl/CodeDepends), [CodeAnalysis](https://github.com/duncantl/CodeAnalysis), ...)
```r
e = lapply(k, function(x) parse(text = x))
 ```
## Format the session as R

```r
toMd(getCode("Rsession"), "Rsession.md")
```

```r
cat(getCode("Rsession"), file = "Rsession.R", sep = "\n\n")
```

The package also installs a makefile with rules to do this.

## Format the session as an R-Docbook document
```r
k = getCode(script, output = TRUE)
db = asRdbTranscript(k)
toFile(db, "/tmp/foo.Rdb")
```
 
Then we can convert it to HTML:
```
make -f ~/MakeRSession/inst/Make/GNUmakefile foo.html
```
 

 
