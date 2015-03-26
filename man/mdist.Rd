\name{mdist}
\alias{mdist}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
	Metabolite Distance Metric
%%  ~~function to do ... ~~
}
\description{
	This function calculates a distance metric between two metabolomic measurements. These measurements can be either scalers or vectors.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
mdist(x, y)
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
}
\details{
	If x and y are of different dimensions, function mdist returns a value of -1, which indicates the \eqn{mdist(x,y)} is not defined in this scenario. When x and y have the same dimension, suppose they have \eqn{p} components. If \eqn{p=1}, then x or y is the abundance level measurement of a single metabolite, which is a non-negative real number. If \eqn{p>1}, then x or y is measurements of a metebolite-set with multiple metabolites. In this case, let \eqn{x_i} be the \eqn{i}th component of x, which is non-negative and denotes the abundance level measurement of the \eqn{i}th metabolite in the metabolite-set. The distance between x and y is defined as: 
    \deqn{mdist(x,y)= \sqrt { \sum_i I[\delta_{x_i} \neq \delta_{y_i}]+ \sum_i (x_i-y_i)^2 }, }
where \eqn{\delta_{x_i}=0} if \eqn{x_i=0}, elsewise, \eqn{\delta_{x_i}=1}, and \eqn{I[\cdot]} is the indicator function. 	 
%%  ~~ If necessary, more details than the description above ~~
}
\value{
	This function returns a non-negative value if x and y are of the same dimension. Otherwise it returns -1.	
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
	x=c(0,1,2)
	y=c(1,0,3)
	z=c(0,1,2,3)
	mdist(x,y)
	mdist(x,z)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ function }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
