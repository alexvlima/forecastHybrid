% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cvts.R
\name{extractForecasts}
\alias{extractForecasts}
\title{Extract cross validated rolling forecasts}
\usage{
extractForecasts(cv, horizon = 1)
}
\arguments{
\item{cv}{An object of class cvts}

\item{horizon}{The forecast horizon from each fold to extract}
}
\value{
Forecasts computed via a rolling origin
}
\description{
Obtain cross validated forecasts when rolling cross validation is used. The object is not
inspected to see if it was fit using a rolling origin
}
\details{
Combine the cross validated forecasts fit with a rolling origin. This may be useful
to visualize and investigate the cross validated performance of the model
}
\examples{
cv <- cvts(AirPassengers, FUN = stlm, FCFUN = forecast,
        rolling = TRUE, windowSize = 134, horizon = 2)

extractForecasts(cv)

}
\author{
Ganesh Krishnan
}
