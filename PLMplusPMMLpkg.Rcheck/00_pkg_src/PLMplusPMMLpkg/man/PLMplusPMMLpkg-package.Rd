\name{PLMplusPMMLpkg-package}
\alias{PLMplusPMMLpkg-package}
\alias{PLMplusPMMLpkg}
\docType{package}

\title{
Reads in json files, create/predict lm, save in serialized and pmml format
}

\description{This package demonstrates how to build/predict lm models and save in serialized and pmml format 
}

\details{
\tabular{ll}{
Package: \tab PLMplusPMMLpkg\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2015-03-12\cr
License: \tab GPL-2\cr
}
}

\author{
Georgia Tsiliki

Maintainer:  Georgia Tsiliki <gtsiliki@central.ntua.gr>
}

\references{
Package source is in the help file for package.skeleton
}

\keyword{ package }


\examples{

data("dat1p")
data("dat1i")
data("dat1m")

data.file<- read.in.json.for.pred(dat1p, dat1m, dat1i)

}
