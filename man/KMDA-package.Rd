\name{KMDA-package}
\alias{KMDA-package}
\alias{KMDA}
\docType{package}
\title{
Kernel-Based Metabolomic Differential Analysis
%%What the package does (short line)
%%~~ package title ~~
}
\description{
This package implements a kernel-based score test in metabolomic differential analysis. In order to capture the special natural of metabolomic data, two new kernel functions are designed in this package. One is a distance-based kernel and the other is a stratified kernel. This kernel approach also allows set-level analysis. It can be use to test whether a set of metabolites (or a metabolite pathway) are differentially expressed under two conditions. 
%~~ A concise (1-5 lines) description of the package ~~
}
\details{
\tabular{ll}{
Package: \tab KMDA\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2015-03-26\cr
License: \tab GPL(>=2)\cr
Functions: 	\tab dkernel calcluates the distance-based kernel.\cr
			\tab skernel calcluates the stratified kernel. \cr
			\tab dscore performs the distance-based kernel score test. \cr
			\tab sscore performs the stratified kernel score test. \cr
			\tab pearson.group performs the grouping of metabolites into metabolite-set based on Pearson correlation. \cr
			\tab spearman.group performs the grouping of metabolites into metabolite-set based on Spearman correlation. \cr
}
%~~ An overview of how to use the package, including the most important functions ~~
}
\author{
Xiang Zhan and Debashis Ghosh  \cr
Maintainer: Xiang Zhan <xiangzhan9@gmail.com>
%~~ The author and/or maintainer of the package ~~
}


\references{
Zhan, X., Patterson, A. D., & Ghosh, D. (2015). Kernel approaches for differential expression analysis of mass spectrometry-based metabolomics data. BMC Bioinformatics, 16(1), 77.

%~~ Literature or other references for background information ~~
}
%%~~ Optionally other standard keywords, one per line, from file KEYWORDS in the R documentation directory ~~
%\keyword{ package }
%\seealso{
%%~~ Optional links to other man pages, e.g. ~~
%%~~ \code{\link[<pkg>:<pkg>-package]{<pkg>}} ~~
%}
%\examples{
%%~~ simple examples of the most important functions ~~
%}
