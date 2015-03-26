\name{invlogit}
\alias{invlogit}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
	Inverse Logit Function
%%  ~~function to do ... ~~
}
\description{
	Given a numeric object return the inverse logit of the values. This function should not be called directly in this package, but be used by other functions like dscore and sscore.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
invlogit(x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ A numerical value
%%     ~~Describe \code{x} here~~
}
}
%\details{
%%  ~~ If necessary, more details than the description above ~~
%}
\value{
	An object of the same type as x containing the inverse logits of the input values. 
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
invlogit(0)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ function }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
