


#Script generated from QC

#Create installation dir for packages
libDir <- "/Users/manuelesimi/.metaRlibs"
dir.create(file.path(libDir), showWarnings = FALSE, recursive = TRUE)
.libPaths(c(libDir))

#create the output dir
dir.create(file.path("/Users/manuelesimi/MPSProjects/Stroke/temp-results"), showWarnings = FALSE, recursive = TRUE)
if (!( require("limma")|require("edgeR") )) {
 if (!require("BiocInstaller")) { 
     source("http://bioconductor.org/biocLite.R", local=TRUE)  
 }
  
   biocLite(ask=FALSE, c("limma","edgeR"))
  library("limma")
library("edgeR")

} 











if (!require("Cairo")) {install.packages("Cairo",repos='http://cran.us.r-project.org'); library("Cairo")};
if (!require("limma")) {install.packages("limma",repos='http://cran.us.r-project.org'); library("limma")};
if (!require("data.table")) {install.packages("data.table",repos='http://cran.us.r-project.org'); library("data.table")};
if (!require("edgeR")) {install.packages("edgeR",repos='http://cran.us.r-project.org'); library("edgeR")};


#empty line
GSE59364_DC_all.csv <- fread("/Users/mas2182/Desktop/GSE59364_DC_all.csv", colClasses=c("character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))
cat("STATEMENT_EXECUTED/ETJOEACHRV/\n");

#empty line

 # Replace row names with gene identifiers
 # TODO: make a copy of the input table, rather than using it by reference.
  countsTable <- copy(GSE59364_DC_all.csv)
  rownames_for_CountsTable <- GSE59364_DC_all.csv$"gene" 
# remove all columns not marked with the "counts" group.
  countsTable <- countsTable[,"gene":=NULL]
  countsTable <- countsTable[,"mRNA len":=NULL]
  countsTable <- countsTable[,"genomic span":=NULL]
  countsTable <- countsTable[,"DC_normal":=NULL]
  countsTable <- countsTable[,"DC_treated":=NULL]

sampleNames <- c("DC0904", "DC0907", "DCLPS0910", "DCLPS0913", "A_DC", "A_DC_LPS", "B_DC", "B_DC_LPS", "C_DC", "C_DC_LPS", "C2DC", "C2DCLPS", "C3DC", "C3DCLPS")

  setcolorder(countsTable, sampleNames)   
  countsTable <- as.matrix(countsTable)

  sampleNames <- colnames(countsTable)
  LPS_treatment <- c( "LPS_no", "LPS_no", "LPS_yes", "LPS_yes", "LPS_no", "LPS_yes", "LPS_no", "LPS_yes", "LPS_no", "LPS_yes", "LPS_no", "LPS_yes", "LPS_no", "LPS_yes" )


  data <- DGEList(counts=countsTable, genes=rownames_for_CountsTable)
  data <- calcNormFactors(data)
 design <- model.matrix(~ 0 + LPS_treatment) 
  voom <- voom(data,design)

 fit <- lmFit(voom, design) 

fit2 <-contrasts.fit(fit, contrasts=makeContrasts( LPS_treatmentLPS_no-LPS_treatmentLPS_yes, levels=design))
fit3 <- eBayes(fit2) 

default<<- data.table(copy(voom$E))

default$"gene" <- voom$gene[,1]
previousColumns=colnames(default)
numColumns=length(previousColumns)# make gene first column:
newcols=c(previousColumns[numColumns :numColumns], previousColumns[1: (numColumns-1)]) #shift(colnames(default),1)
newcols[1]="gene"
setcolorder(default, newcols)
# TODO: change the below line to use constrasts from the limmaVoom statement:
results <<- data.table(topTable(fit3,coef=1, number=nrow(countsTable)))
cat("STATEMENT_EXECUTED/OGEQXXIPPC/\n")
write.table(results,"/Users/manuelesimi/MPSProjects/Stroke/temp-results/QCWithMAPlot/table_results_0.tsv", row.names=FALSE, sep="\t") 
cat("STATEMENT_EXECUTED/OGEQXXIPPC/\n");

plot_DEYPWUSQJA<-function (table){
 
table=results
genelist<-c("")
inGeneList<-function (x){
genes<-x$"genes"
a<-genes%in%genelist
b<-sapply(genes,length)
a&(b>0)
}
sig_gene_idx<-which(table$"adj.P.Val"<0.015)
sig_ave_gene_idx<-which(table$"adj.P.Val"<0.015&table$"AveExpr">-1.0)
sel_genes<-table$"genes"[sig_ave_gene_idx]
plot(x=table$"AveExpr",y=table$"logFC",col=ifelse(table$"genes"%in%sel_genes,"red","black"),pch=ifelse(table$"genes"%in%sel_genes,19,18),cex=ifelse(table$"genes"%in%sel_genes,0.6,0.2),ylab=bquote("log"[2]~"fold change"),xlab=bquote("log"[2]~"expression"),yaxt="n",NULL,NULL,NULL)
axis(side=2,at=seq(-100,100,by=0.5))
segments(x0=-1.0,y0=-1000,x1=-1.0,y1=1000,lty="dashed")
segments(x0=-1000,y0=0,x1=1000,y1=0,lty="dashed")
#label genes of interest:
labels<-character(length=length(table$"genes"))
labels_idx<-which(inGeneList(table))
labels[labels_idx]<-table$"genes"[labels_idx]
text(x=table$"AveExpr",y=table$"logFC",labels=labels,cex=0.5)
}
 
png("/Users/manuelesimi/MPSProjects/Stroke/temp-results/QCWithMAPlot/plot_DEYPWUSQJA_5.png",width=300,height=300)
plot_DEYPWUSQJA(NULL)
ignore<-dev.off()
 #empty line
#QC on a subset of the Genes
plot_UEKOKOACDM<-function (table){
 
table=results
genelist<-c("5H9", "A2LG", "A2M")
inGeneList<-function (x){
genes<-x$"genes"
a<-genes%in%genelist
b<-sapply(genes,length)
a&(b>0)
}
sig_gene_idx<-which(table$"adj.P.Val"<0.015)
sig_ave_gene_idx<-which(table$"adj.P.Val"<0.015&table$"AveExpr">-10.0)
sel_genes<-table$"genes"[sig_ave_gene_idx]
plot(x=table$"AveExpr",y=table$"logFC",col=ifelse(table$"genes"%in%sel_genes,"red","black"),pch=ifelse(table$"genes"%in%sel_genes,19,18),cex=ifelse(table$"genes"%in%sel_genes,0.6,0.2),ylab=bquote("log"[2]~"fold change"),xlab=bquote("log"[2]~"expression"),yaxt="n",NULL,NULL,NULL)
axis(side=2,at=seq(-100,100,by=0.5))
segments(x0=-10.0,y0=-1000,x1=-10.0,y1=1000,lty="dashed")
segments(x0=-1000,y0=0,x1=1000,y1=0,lty="dashed")
#label genes of interest:
labels<-character(length=length(table$"genes"))
labels_idx<-which(inGeneList(table))
labels[labels_idx]<-table$"genes"[labels_idx]
text(x=table$"AveExpr",y=table$"logFC",labels=labels,cex=0.5)
}
 
png("/Users/manuelesimi/MPSProjects/Stroke/temp-results/QCWithMAPlot/plot_UEKOKOACDM_1.png",width=300,height=300)
plot_UEKOKOACDM(NULL)
ignore<-dev.off()
 #empty line
# Layout plots in a grid:
plot_TBDPLQOCCD = function(ignore) 
{
#par(mfrow=c(1,2)) 
layout(matrix(c(1:2), byrow=TRUE, 1, 2), widths=c(300.0,300.0), heights=c(300.0))
plot_DEYPWUSQJA();
plot_UEKOKOACDM();
}

png(file="/Users/manuelesimi/MPSProjects/Stroke/temp-results/QCWithMAPlot/plot_TBDPLQOCCD_11.png", width=700, height=1300)
plot_TBDPLQOCCD(null)
ignore <- dev.off()
cat("STATEMENT_EXECUTED/TBDPLQOCCD/\n");

pdf("/Users/manuelesimi/MPSProjects/Stroke/temp-results/QCWithMAPlot/MAplot.pdf", width=6, height=4, onefile=FALSE )
plot_DEYPWUSQJA()
ignore <- dev.off()
cat("STATEMENT_EXECUTED/RTNPCFRWYV/\n");


