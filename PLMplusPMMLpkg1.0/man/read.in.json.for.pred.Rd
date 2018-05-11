\name{read.in.json.for.pred}
\alias{read.in.json.for.pred}

\title{ Read in function for json files for prediction }
\description{ This function reads in a json data file and produces a list with y, x variables, and additionalInfo }

\usage{
read.in.json.for.pred(dataset, rawModel, additionalInfo)
}


\arguments{
  \item{dataset}{ Data for prediction. A list of two objects: datasetURI (a character string ), dataEntry (a data frame).}
  \item{rawModel}{ R model serialized. }
  \item{additionalInfo}{ Any additional information needed for rawModel. For lm: A list including a data frame showing the independent variables of the original data included in the model, and a character vector showing the predicted feature's name (as produced by lm.funct). The data frame consists of two coloumns, the 1st named 'ModelCoef' giving the dummy coefficient names produced for independent features in the model, and 2nd 'RealFeatureNames' which are ambit's feature names.}
}

\details{The function returns an error if the supplied dataset does not include all the independent features in the raw model.  
}

\value{
A List including:
  \item{x.mat }{ data frame with independent variables}
  \item{model }{ R model }
  \item{additionalInfo}{Any additional information needed for rawModel. For lm: the dependent variables included in the model and also the new data set, and the predicted feature's name }
}

\references{The help file of skeleton }

\author{
Georgia Tsiliki
}

\note{
No notes for this function
}


\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--  or do  help(data=index)  for the standard data sets.

data("dat1p")
data("dat1i")
data("dat1m")

data.file<- read.in.json.for.pred(dat1p, dat1m, dat1i)


}

\keyword{ readjsonp }

