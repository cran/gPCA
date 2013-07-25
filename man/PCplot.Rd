\name{PCplot}
\alias{PCplot}
\title{Principal Component Plot}
\description{Produces principal component plots from either unguided or guided PCA.}
\usage{
PCplot(out, ug = "unguided", type = "1v2", npcs, ...)
}
\arguments{
  \item{out}{object resulting from \code{gPCA.batchdetect()} call.}
  \item{ug}{"guided" or "unguided".  Do you want the cumulative variance from guided or unguided PCA plotted.}
  \item{type}{type of plot.  Either "1v2" to plot the first two principal components, or "comp" to compare all principal component up to the level of \code{npcs}.}
  \item{npcs}{Number of principal compoents to plot when "comp" type is chosen. }
  \item{\dots}{any other \code{plot} calls.}
}
\details{
This function plots either the first principal component versus the second principal component (\code{type="1v2"}) 
from guided or unguided PCA, or compares (\code{type="comp"}) all combinations of the principal components up to 
the value of \code{npcs}. 
}
\references{
Reese, S. E., Archer, K. J., Therneau, T. M., Atkinson, E. J., Vachon, C. M., de Andrade, M., Kocher, J. A., and Eckel-Passow, J. E. A new statistic for identifying batch effects in high-throughput genomic data that uses guided principal components analysis. Bioinformatics, (in review).
}
\author{
Sarah Reese \email{reesese@vcu.edu}
}

\seealso{
\code{\link{gPCA.batchdetect}}, \code{\link{gDist}}, \code{\link{CumulativeVarPlot}}
}
\examples{
# PCplot(out,ug="unguided",type="1v2")
# PCplot(out,ug="unguided",type="comp",npcs=4)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
