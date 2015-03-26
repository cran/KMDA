\name{pearson.group}
\alias{pearson.group}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
	Grouping Based on Pearson Correlation Coefficients
%%  ~~function to do ... ~~
}
\description{
	This function forms metabolite-sets based on pairwise Pearson correlation between different metabolites.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
pearson.group(data, threshold)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{
  	a matrix with each row being a metabolite and each column being a sample.
%%     ~~Describe \code{data} here~~
}
  \item{threshold}{
  	a threshold value for correlation coeffients.
%%     ~~Describe \code{threshold} here~~
}
}
\details{
	The input data is a matrix with each row denoting a metabolites. This function groups different rows of the data matrix together based on the Pearson correlation coefficients between two rows. It works in the following way. \cr
	First, each row in the data matrix is treated as a node. If the Pearson correlation coefficient between two nodes is larger than the threshold value, then an edge is added between this two nodes. Second, all nodes which are connected (not necessary to be pairwisely connected) form a group. At the end, a vector of group labels can be obtained. The length of this vector is the same as the number of rows in the data matrix. Different rows with the same group label are in the same group. The number of distinct values in this label-vector is the number of groups.
%%  ~~ If necessary, more details than the description above ~~
}
\value{
	A vector of group labels, of the same length as the number of rows in the data matrix.
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
	nr=20
	nc=10
	x=matrix(rnorm(nr*nc),nrow=nr,ncol=nc)
	pearson.group(x,0.5)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ function }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
