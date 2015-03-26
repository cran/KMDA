\name{skernel}
\alias{skernel}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
	Stratified Kernel
%%  ~~function to do ... ~~
}
\description{
	This function defines a stratified kernel for metabolite abundance level measurements.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
skernel(x, y, rho)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
  	a numerical scalar or vector of metabolomic measurements.
%%     ~~Describe \code{x} here~~
}
  \item{y}{
  	a numerical scalar or vector of metabolomic measurements.
%%     ~~Describe \code{y} here~~
}
  \item{rho}{
  	a positive kernel shape parameter.
%%     ~~Describe \code{rho} here~~
}
}
\details{
	This function calculates a stratified kernel function \eqn{skernel} between two metabolomic measurements x and y. Suppose the metabolite-set contains \eqn{p} metabolites. Then measurements x and y have \eqn{p} components. Let \eqn{x_i} be the \eqn{i}th component of x. If \eqn{x_i=0}, then the \eqn{i}th metabolite in the metabolite-set is absent. If \eqn{x_i>0}, then the \eqn{i}th metabolite is present and \eqn{x_i} measures the abundance level of the \eqn{i}th metabolite. Measurements x and y are said to from the same stratum if they have the same set of metabolites being absent (present). If x and y are from the same stratum, then \eqn{skernel(x,y,\rho)} is assigned a Gaussian kernel with kernel parameter \eqn{\rho}. Otherwise \eqn{skernel(x,y,\rho)} is defined to be 0. More details can be found in Zhan et al. (2015).
%%  ~~ If necessary, more details than the description above ~~
}
\value{
	A non-negative real value.
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
	Zhan, X., Patterson, A. D., & Ghosh, D. (2015). Kernel approaches for differential expression analysis of mass spectrometry-based metabolomics data. BMC Bioinformatics, 16(1), 77.
%% ~put references to the literature/web site here ~
}
%\author{
%%  ~~who you are~~
%}
%\note{
%%  ~~further notes~~
%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

%\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
%}
\examples{
	x=c(0,0,1,2)
	y=c(0,1,2,0)
	z=c(0,0,3,4)
	## x and z are from the same stratum while x and y are not. 
	skernel(x,y,1)
	skernel(x,z,1)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ function }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
