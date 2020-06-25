


#Script generated from UpSetDemo

#Create installation dir for packages
libDir <- "/Users/manuelesimi/.metaRlibs"
dir.create(file.path(libDir), showWarnings = FALSE, recursive = TRUE)
.libPaths(c(libDir))

#create the output dir
dir.create(file.path("/Users/manuelesimi/MPSProjects/Stroke/temp-results"), showWarnings = FALSE, recursive = TRUE)






if (!require("UpSetR")) {install.packages("UpSetR",repos='http://cran.us.r-project.org'); library("UpSetR")};
if (!require("data.table")) {install.packages("data.table",repos='http://cran.us.r-project.org'); library("data.table")};
if (!require("dplyr")) {install.packages("dplyr",repos='http://cran.us.r-project.org'); library("dplyr")};


#with defined gene lists:
#empty line
#empty line
plot_QQLGAGXEWK<-function (table){
FirstSet<-c("GeneA","GeneB","GeneC","GeneD")
SecondSet<-c("GeneA","GeneB","GeneD","GeneE","GeneF","GeneG")
ThirdSet<-c("GeneA","GeneB","GeneE","GeneF","GeneG","GeneH","GeneI")
 
upset(fromList(list(FirstSet=FirstSet,SecondSet=SecondSet,ThirdSet=ThirdSet)),mb.ratio=c(0.55,0.45),order.by="freq")
 
}
png("/Users/manuelesimi/MPSProjects/Stroke/temp-results/UpSet/plot_QQLGAGXEWK_3.png",width=300,height=300)
plot_QQLGAGXEWK(NULL)
ignore<-dev.off()
 # Layout plots in a grid:
plot_YCMCMHNRKC = function(ignore) 
{
#par(mfrow=c(1,1)) 
layout(matrix(c(1:1), byrow=TRUE, 1, 1), widths=c(300.0), heights=c(300.0))
plot_QQLGAGXEWK();
}

png(file="/Users/manuelesimi/MPSProjects/Stroke/temp-results/UpSet/plot_YCMCMHNRKC_1.png", width=700, height=1300)
plot_YCMCMHNRKC(null)
ignore <- dev.off()
cat("STATEMENT_EXECUTED/YCMCMHNRKC/\n");

pdf("/Users/manuelesimi/MPSProjects/Stroke/temp-results/UpSet/intersection.pdf", width=4, height=4, onefile=FALSE )
plot_QQLGAGXEWK()
ignore <- dev.off()
cat("STATEMENT_EXECUTED/BLBGJLUDGB/\n");


