\name{dat1i}
\alias{dat1i}
\docType{data}
\title{A list including names of independent variables in model dat1m and predicted feature's name 
}

\description{For lm model: A list including a data frame of two columns, the 1st named 'ModelCoef' giving the dummy coefficient names produced for independent features in the model, and 2nd 'RealFeatureNames' which are ambit's feature names. Also included is the  PredictedFeatures, a charcater string indicating the name of the predicted feature.
}

\usage{data("dat1i")}

\format{
  A list with two objects.
  \describe{
    \item{\code{indepFeatures}}{data frame with 4 observations on the following 2 variables: ModelCoef, RealFeatureNames. The first is a character vector, giving the dummy coefficient names produced for independent features in the model, and the second a character vector, which are ambit's feature names (uris).}
    \item{\code{predictedFeatures}}{A character string giving the predicted features name (ambit uri plus the word 'Predicted').}
  }
}

\details{
Example dataset to predict with dat1m
}

\source{
The source of this function is in the
}

\references{
There are no references
}

\examples{
data(dat1i)
## maybe str(dat1i) ; plot(dat1i) ...
}

\keyword{datasetsi}
