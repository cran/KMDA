\name{tr}
\alias{tr}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Trace of A Matrix
%%  ~~function to do ... ~~
}
\description{
	This function calculates the trace of a given numeric square matrix. This function should not be called directly in this package. It is called by other functions like dscore and sscore.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
tr(X)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{X}{
  	A square matrix
%%     ~~Describe \code{X} here~~
}
}
%\details{	
%%  ~~ If necessary, more details than the description above ~~
%}
\value{
	A numeric value which is the sum of the values on the diagnonal.
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
%\references{
%% ~put references to the literature/web site here ~
%}
%\author{
%%  ~~who you are~~
%}
%\note{
%%  ~~further notes~~
%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
	\code{\link{dscore}}, \code{\link{sscore}}
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
	A=matrix(seq(1:9),nrow=3,ncol=3)
	tr(A)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{}
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
