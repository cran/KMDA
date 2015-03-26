\name{dscore}
\alias{dscore}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
	Distance-based Kernel Score Test
%%  ~~function to do ... ~~
}
\description{
	This function test whether a metabolite-set is differentially expressed using a distance-based  kernel score test.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
dscore(x, y, lower, upper, m)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
  	numeric measurements of metabolite abundance level. 
%%     ~~Describe \code{x} here~~
}
  \item{y}{
  	0/1 response indicating whether a subject is a case group or a control group.
%%     ~~Describe \code{y} here~~
}
  \item{lower}{
  	lower bound of the kernel parameter.
%%     ~~Describe \code{lower} here~~
}
  \item{upper}{
  	upper bound of the kernel parameter.
%%     ~~Describe \code{upper} here~~
}
  \item{m}{
  	number of grid points selected in the interval [lower, upper].
%%     ~~Describe \code{m} here~~
}
}
\details{
	Let x be a \eqn{p\times n} matrix, where each column is a subject, y be a \eqn{n \times 1} 0/1 vector indicating the group label. This function tests whether this \eqn{p}-metabolite set is differentially expressed between two groups (more details can be found in Zhan et al. (2015)). It works in the following way. \cr  
	\cr
	A score test can be applied when the kernel parameter \eqn{\rho} is known. First, fit the null logistic model \eqn{logit(pr(y=1))=\beta_0} to get estimate of \eqn{\beta_0} as \eqn{\hat{\beta_0}}. Let \eqn{\hat{\mu_0}=invlogit(\hat{\beta_0})}. Second, The \eqn{n\times n} kernel matrix is calculated as \eqn{K(\rho)_{ij} = k(x_i,x_j,\rho)}, where \eqn{x_i} is \eqn{i}th column in x, \eqn{k(\cdot)} is the distance kernel function dkernel. Third, the test statistic \eqn{Q(\rho)} is calculated as \deqn{Q(\rho)=(y-\hat{\mu_0})^T K(\rho) (y-\hat{\mu_0}).} An standardized version \eqn{S(\rho)} of \eqn{Q(\rho)} can be calculated as \eqn{S(\rho)= [Q(\rho)-\mu_{Q}]/\sigma_{Q}}. More details can be found in Liu et al.(2008). \cr
	\cr
	When the kernel parameter \eqn{\rho} is not known. Suppose it takes values in [lower, upper]. Davies (1977) and Davies (1987) proposed a test based on the process \eqn{\{S(\rho), \rho \in [lower,upper]\}}. This test has rejection region of the form \eqn{\{\sup_{L \leq \rho \leq U} S(\rho)> c \}}. Using this test, an upper-bound for the p-value is given by:
\deqn{\Phi(-M)+V \exp(\frac{1}{2}M^2)/\sqrt{8\pi},}
where \eqn{\Phi(\cdot)} is the cumulative distribution function of standard normal density, \eqn{M} is the maximum of \eqn{S(\rho)} over the range of \eqn{\rho} and \eqn{V=|S(\rho_1)-S(lower)|+|S(\rho_2)-S(\rho_1)|+\cdots+|S(upper)-S(\rho_m)|} is the total variation of \eqn{S(\rho)} over the interval [lower, upper] and \eqn{\rho_1,\ldots,\rho_m} are \eqn{m} grid points in the interval [lower, upper].

%%  ~~ If necessary, more details than the description above ~~
}
\value{
	A p-value indicating whether the metabolite-set is differentially expressed or not under two conditions/groups.
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
	Davies, R. B. (1977) Hypothesis testing when a nuisance parameter is present only under the alternative. Biometrika, 64,247-254. \cr
    Davies, R. B. (1987) Hypothesis testing when a nuisance parameter is present only under the alternative. Biometrika, 74,33-43. \cr
	Liu, D., Ghosh, D., & Lin, X. (2008). Estimation and testing for the effect of a genetic pathway on a disease outcome using logistic kernel machine regression via logistic mixed models. BMC bioinformatics, 9(1), 292.\cr
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
	\code{\link{invlogit}},  \code{\link{dkernel}}
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
data(hcc)
x=hcc[1:3,3:57]  ## This metabolite-set contains the first three metabolites in the hcc dataset.
y=c(rep(0,35),rep(1,20))
dscore(x,y,1,10,3)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ function }
%\keyword{ score test }% __ONLY ONE__ keyword per line
