pkgname <- "PLMplusPMMLpkg"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
library('PLMplusPMMLpkg')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
cleanEx()
nameEx("PLMplusPMMLpkg-package")
### * PLMplusPMMLpkg-package

flush(stderr()); flush(stdout())

### Name: PLMplusPMMLpkg-package
### Title: Reads in json files, create/predict lm, save in serialized and
###   pmml format
### Aliases: PLMplusPMMLpkg-package PLMplusPMMLpkg
### Keywords: package

### ** Examples


data("dat1p")
data("dat1i")
data("dat1m")

data.file<- read.in.json.for.pred(dat1p, dat1m, dat1i)




cleanEx()
nameEx("dat1")
### * dat1

flush(stderr()); flush(stdout())

### Name: dat1
### Title: A sample data object
### Aliases: dat1
### Keywords: datasets

### ** Examples

data(dat1)
## maybe str(dat1) ; plot(dat1) ...



cleanEx()
nameEx("dat1i")
### * dat1i

flush(stderr()); flush(stdout())

### Name: dat1i
### Title: A list including names of independent variables in model dat1m
###   and predicted feature's name
### Aliases: dat1i
### Keywords: datasetsi

### ** Examples

data(dat1i)
## maybe str(dat1i) ; plot(dat1i) ...



cleanEx()
nameEx("dat1m")
### * dat1m

flush(stderr()); flush(stdout())

### Name: dat1m
### Title: Serialized lm model file
### Aliases: dat1m
### Keywords: datasetsm

### ** Examples

data(dat1m)
## maybe str(dat1m) ; plot(dat1m) ...



cleanEx()
nameEx("dat1p")
### * dat1p

flush(stderr()); flush(stdout())

### Name: dat1p
### Title: A sample data object
### Aliases: dat1p
### Keywords: datasetsp

### ** Examples

data(dat1p)
## maybe str(dat1p) ; plot(dat1p) ...



cleanEx()
nameEx("lm.funct")
### * lm.funct

flush(stderr()); flush(stdout())

### Name: lm.funct
### Title: Linear model
### Aliases: lm.funct
### Keywords: pmmlLM

### ** Examples

##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--  or do  help(data=index)  for the standard data sets.

data("dat1")

x1<- "https://apps.ideaconsult.net/ambit2/feature/22137"


x2<- list('theta'=1,'lambda'=2)

lm.mod<- lm.funct(dat1,x1,x2) 




cleanEx()
nameEx("pred.funct")
### * pred.funct

flush(stderr()); flush(stdout())

### Name: pred.funct
### Title: lm prediction
### Aliases: pred.funct
### Keywords: predlmjson

### ** Examples

##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

data("dat1p")
data("dat1i")
data("dat1m")

pred.res<- pred.funct(dat1p, dat1m, dat1i) 




cleanEx()
nameEx("read.in.json")
### * read.in.json

flush(stderr()); flush(stdout())

### Name: read.in.json
### Title: Read in function for json files
### Aliases: read.in.json
### Keywords: readjson

### ** Examples

##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--  or do  help(data=index)  for the standard data sets.

data("dat1")

x1<- "https://apps.ideaconsult.net/ambit2/feature/22137"


x2<- list('theta'=1,'lambda'=2)

r.dat1<- read.in.json(dat1,x1,x2)





cleanEx()
nameEx("read.in.json.for.pred")
### * read.in.json.for.pred

flush(stderr()); flush(stdout())

### Name: read.in.json.for.pred
### Title: Read in function for json files for prediction
### Aliases: read.in.json.for.pred
### Keywords: readjsonp

### ** Examples

##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--  or do  help(data=index)  for the standard data sets.

data("dat1p")
data("dat1i")
data("dat1m")

data.file<- read.in.json.for.pred(dat1p, dat1m, dat1i)





### * <FOOTER>
###
options(digits = 7L)
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
