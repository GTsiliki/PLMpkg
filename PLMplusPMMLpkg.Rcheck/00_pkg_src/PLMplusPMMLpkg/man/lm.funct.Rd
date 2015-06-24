\name{lm.funct}
\alias{lm.funct}

\title{Linear model }

\description{
lm.funct perform lm and is expecting data in json format 
}

\usage{
lm.funct(dataset, predictionFeature, parameters)
}

\arguments{
  \item{dataset}{ list of 2 objects, datasetURI:= character sring, code name of dataset, dataEntry:= data frame with 2 columns }
  \item{predictionFeature}{ character string specifying which is the prediction feature in dataEntry }
  \item{parameters}{ list with parameter values }
}

\details{ No details required }

\value{A List 
  \item{rawModel}{ A serialized lm object is (class raw)}
  \item{pmmlModel}{ A pmml lm object }
  \item{predictedFeatures} { A character string givingth the predicted feature name (ambit)}
  \item{independentFeatures}{ A list with all independent features included in the lm model }
  \item{additionalInfo}{  For lm: A list including a data frame with all independent features in the lm model and their dummy name in the model, and predicted feature's name }
}

\references{ The help file of skeleton }

\author{ Georgia Tsiliki }

\note{ No notes for this function }

\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--  or do  help(data=index)  for the standard data sets.

data("dat1")

x1<- "https://apps.ideaconsult.net/ambit2/feature/22137"


x2<- list('theta'=1,'lambda'=2)

lm.mod<- lm.funct(dat1,x1,x2) 

}

\keyword{ pmmlLM }