\name{gPCA-package}
\alias{gPCA-package}
\alias{gPCA}
\docType{package}
\title{Batch Effect Detection via Guided Principal Components Analysis}
\description{
This package implements guided principal components analysis for the detection of batch effects in high-throughput data.
}
\details{
\tabular{ll}{
Package: \tab gPCA\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2013-07-25\cr
License: \tab GPL (>=2)\cr
}
The function \code{gPCA.batchdetect()} is used to perform the batch detection test and outputs the 
resulting \eqn{\delta} statistic and corresponding \eqn{p}-value, along with other useful measures for visualization.
}
\author{
Sarah Reese

Maintainer: Sarah Reese \email{reesese@vcu.edu}
}
\references{
Reese, S. E., Archer, K. J., Therneau, T. M., Atkinson, E. J., Vachon, C. M., de Andrade, M., Kocher, J. A., and Eckel-Passow, J. E. A new statistic for identifying batch effects in high-throughput genomic data that uses guided principal components analysis. Bioinformatics, (in review).
}
\keyword{ package }
\seealso{
\code{\link{gPCA.batchdetect}}
}
