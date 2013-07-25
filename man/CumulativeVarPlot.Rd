\name{CumulativeVarPlot}
\alias{CumulativeVarPlot}
\title{Plot of the Cumulative Variance due to the Principal Components}
\description{The function plots the cumulative variance of the principal components.}
\usage{
CumulativeVarPlot(out, ug = "unguided", ...)
}
\arguments{
  \item{out}{object resulting from \code{gPCA.batchdetect()} call.}
  \item{ug}{"guided" or "unguided".  Do you want the cumulative variance from guided or unguided PCA plotted.}
  \item{\dots}{any other \code{plot} calls.}
}
\details{This function plots the cumulative variance of the principal components from guided or unguided PCA calculated as (for the unguided case)
	\deqn{Var_l=\frac{\sum_{i=1}^l \var(PC_u)_i}{\sum_{i=1}^n \var(PC_u)_i}}
for the \eqn{l}th principal component (\eqn{l=1,\dots,n}).
}
\references{
Reese, S. E., Archer, K. J., Therneau, T. M., Atkinson, E. J., Vachon, C. M., de Andrade, M., Kocher, J. A., and Eckel-Passow, J. E. A new statistic for identifying batch effects in high-throughput genomic data that uses guided principal components analysis. Bioinformatics, (in review).
}
\author{
Sarah Reese \email{reesese@vcu.edu}
}

\seealso{
\code{\link{gPCA.batchdetect}}, \code{\link{gDist}}, \code{\link{PCplot}}
}
\examples{
# CumulativeVarPlot(out,ug="unguided",col="blue")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
