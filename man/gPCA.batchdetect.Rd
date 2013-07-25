\name{gPCA.batchdetect}
\alias{gPCA.batchdetect}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Guided Principal Components Analysis}
\description{
Tests for batch effects an \eqn{n \times p} data set with batch vector given by \code{batch} using the \eqn{\delta} 
statistic resulting from guided principal componenets analysis (gPCA).
}
\usage{
gPCA.batchdetect(x, batch, filt = NULL, nperm = 1000, center = FALSE, scaleY=FALSE, 
seed = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
an \eqn{n x p} matrix of data where \eqn{n} denotes observations and \eqn{p} denotes the number of features (e.g. probe, gene, SNP, etc.).
}
  \item{batch}{
a length \eqn{n} vector that indicates batch (group or class) for each observation.
}
  \item{filt}{
(optional) the number of features to retain after applying a variance filter.  If NULL, no filter is applied. Filtering can significantly reduce the processing time in the case of very large data sets.
}
  \item{nperm}{
the number of permutations to perform for the permutation test, default is 1000.
}
  \item{center}{
(logical) Is your data \code{x} centered?  If not, then \code{center=FALSE} and gPCA.batchdetect will center it for you.
}
  \item{scaleY}{
(logical) Do you want to scale the \code{Y} matrix by the number of samples in each batch?  If not, then \code{center=FALSE} (default), otherwise, \code{center=TRUE}.
}
  \item{seed}{
the seed number for \code{set.seed()}. Default is NULL.
}
}
\details{
Guided principal components analysis (gPCA) is an extension of principal components analysis (PCA) that guides the 
singular value decomposition (SVD) of PCA by applying SVD to \eqn{\mathbf{Y}'\mathbf{X}} where \eqn{\mathbf{Y}} is a 
\eqn{n \times b} batch indicator matrix of ones when an observation \eqn{i (i=1,\dots,n)} is in batch \eqn{b} and 
zeros otherwise.

The test statistic \eqn{\delta} along with a one-sided \eqn{p}-value results from a \code{gPCA.batchdetect()} call, 
along with the values of \eqn{\delta_p} from the permutation test. The \eqn{\delta_p} values can be used to visualize 
the permutation distribution of your test using the \code{\link{gDist}} function. For more information on gPCA, please 
see \cite{reese}.
}
\value{
\item{delta}{test statistic \eqn{\delta} from gPCA.}
\item{p.val}{\eqn{p}-value associated with \eqn{\delta} resulting from gPCA.}
\item{delta.p}{\code{nperm} length vector of delta values resulting from the permuation test.}
\item{batch}{returns your length \eqn{n} batch vector.}
\item{filt}{returns the number of features the variance filter retained.}
\item{n}{the number of observations}
\item{p}{the number of features}
\item{b}{the number of batches}
\item{PCu}{principal component matrix from unguided PCA.}
\item{PCg}{principal component matrix from gPCA.}
\item{varPCu1}{the proportion out of the total variance associated with the first principal component of unguided PCA.}
\item{varPCg1}{the proportion out of the total variance associated with the first principal component of gPCA.}
\item{cumulative.var.u}{length \eqn{n} vector of the cumulative variance of the \eqn{i=1,\dots,n} principal components from unguided PCA.}
\item{cumulative.var.g}{length \eqn{b} vector of the cumulative variance of the \eqn{k=1,\dots,b} principal components from gPCA.}
}
\references{
Reese, S. E., Archer, K. J., Therneau, T. M., Atkinson, E. J., Vachon, C. M., de Andrade, M., Kocher, J. A., and Eckel-Passow, J. E. A new statistic for identifying batch effects in high-throughput genomic data that uses guided principal components analysis. Bioinformatics, (in review).}
\author{
Sarah Reese \email{reesese@vcu.edu}
}
\seealso{
\code{\link{gDist}}, \code{\link{PCplot}}, \code{\link{CumulativeVarPlot}}, 
}
\examples{
data(caseDat)
batch<-caseDat$batch
data<-caseDat$data
out<-gPCA.batchdetect(x=data,batch=batch,center=FALSE,nperm=250)
out$delta ; out$p.val

## Plots:
gDist(out)
CumulativeVarPlot(out,ug="unguided",col="blue")
PCplot(out,ug="unguided",type="1v2")
PCplot(out,ug="unguided",type="comp",npcs=4)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
