\name{dkernel}
\alias{dkernel}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ 
	Distance-based Kernel 
%%  ~~function to do ... ~~
}
\description{
	This function defines a distance-based kernel function. 
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
dkernel(x, y, rho)
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
  	a positve real number, determining the smoothness of the kernel function.
%%     ~~Describe \code{rho} here~~
}
}
\details{
	This function calculates a distance-based kernel function \eqn{dkernel} between two metabolomic measurements x and y. It first calculates the distance between x and y (see function mdist for more details). Then the kernel function \eqn{dkernel} is calculated as
	\deqn{dkernel(x,y)=exp\{ \frac{-mdist(x,y)^2}{\rho}\} }

%%  ~~ If necessary, more details than the description above ~~
}
\value{
	A positive real value.
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

\seealso{
	\code{\link{mdist}}
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
	x=rnorm(5)
	y=rnorm(5)
	dkernel(x,y,1)	
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{}
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
