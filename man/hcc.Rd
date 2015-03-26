\name{hcc}
\alias{hcc}
\docType{data}
\title{
	Metabolomic Study on Hepatocellular Carcinoma (HCC)
%%   ~~ data name/kind ... ~~
}
\description{
	This dataset is a matrix containing measurements of metabolite abundance level. 
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
}
\usage{data(hcc)}
\format{
A data matrix with 1388 rows and 57 columns. Each row is a metabolite. The columns are: \cr
1st column: retention time;\cr
2nd column: m/z (mass-to-charge) ratio;\cr
3rd- 57th columns: abundance level measuremnts of metabolites from different subjects.
}
\details{
	This data are originally produced in Patterson et al. (2011). The size of this data matrix is 1388 \eqn{\times} 57. Each row is a metabolite detected by some certain platforms. The first colum is retention time, and the second column is the m/z ratio. Those two columns can be treated as identification of metabolites. The 3rd to 57th columns are measurements from 55 subjects. The column names indicate both the subject number and the group that subject comes from. 20 Subjects are from the Hepatocellular Carcinoma (HCC, n=20) group and 35 subjects are form the control group. Moreover the control group can be divided into three subgroups. They are acute myelogenous leukemia (AML, n=22), healthy volunteers (H, n=6) and liver cirrhosis (LC, n=7). More details can be found in Patterson et al. (2011).	 
%%  ~~ If necessary, more details than the __description__ above ~~
}
%\source{
%%  ~~ reference to a publication or URL from which the data were obtained ~~
%}
\references{
	Patterson et al. (2011), Aberrant lipid metabolism in hepatocellular carcinoma revealed by plasma metabolomics and lipid profiling. Cancer research 71 (21), 6590-6600. 
%%  ~~ possibly secondary sources and usages ~~
}
\examples{
data(hcc)
hccpeak=hcc[,3:57]  
## Deleting the first two columns. All columns in hccpeak is abundance level measurements. 
pearson.group(hccpeak[1:30,],0.95) 
## Grouping the first 30 metabolites in hcc dataset to form metabolite-sets.
}
%\keyword{datasets}
