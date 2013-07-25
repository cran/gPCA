\name{caseDat}
\alias{caseDat}
\docType{data}
\title{Case study copy number variation data}
\description{This is a data set of copy number variation data with \eqn{n=500} observations and \eqn{p=1000} features. The length \eqn{n} \code{batch} vector (first column of \code{caseDat}) indicates the batch for each sample.}
\usage{data(caseDat)}
\format{A list with two objects:
  \describe{
    \item{\code{batch}}{A numeric vector indicating batch for the \eqn{n=500} samples.}
    \item{\code{data}}{A matrix of \eqn{n=500} samples and \eqn{p=1000} features.}
}}
\references{Reese, S. E., Archer, K. J., Therneau, T. M., Atkinson, E. J., Vachon, C. M., de Andrade, M., Kocher, J. A., and Eckel-Passow, J. E. A new statistic for identifying batch effects in high-throughput genomic data that uses guided principal components analysis. Bioinformatics, (in review).}
\examples{
data(caseDat)
}
\keyword{datasets}