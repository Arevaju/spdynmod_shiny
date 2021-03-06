% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/mrgf.R
\name{mrgf}
\alias{mrgf}
\title{A function to perform Multiple Resolution Goodness of Fit.}
\usage{
mrgf(year = "1992", w1 = 1, w2 = 27, k = 0)
}
\arguments{
\item{year}{year validation year (by default 1992)}

\item{w1}{w1 initial window size (by default 1)}

\item{w2}{w2 final window size (by default 27; max. 113)}

\item{k}{k parameter for weighting Ft with lower/larger windows resolutions}
}
\value{
Fw vector of fits for each window size

Ft weighted overall fit
}
\description{
Returns the results of a Multiple Resolution Goodness of Fit after the modified method of Kuhnert et al. 2005, originally by Costanza 1989. This function is computationally intensive and consumes a lot of RAM memory.
}
\examples{
## Not run mrgf(year='1992',w1=1,w2=113,k=0)
}
\keyword{Fit}
\keyword{Goodness}
\keyword{Multiple}
\keyword{Resolution}

