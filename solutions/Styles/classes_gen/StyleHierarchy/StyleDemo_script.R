


#Script generated from StyleDemo

#Create installation dir for packages
libDir <- "/Users/mas2182/.metaRlibs"
dir.create(file.path(libDir), showWarnings = FALSE, recursive = TRUE)
.libPaths(c(libDir))

#create the output dir
dir.create(file.path("/Users/mas2182/temp/metaR_results/2"), showWarnings = FALSE, recursive = TRUE)
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
cat("STATEMENT_EXECUTED/NQCFSASISY/\n");

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
cat("STATEMENT_EXECUTED/OSPRPUIQLJ/\n")
write.table(results,"/Users/mas2182/temp/metaR_results/2/StyleHierarchy/table_results_0.tsv", row.names=FALSE, sep="\t") 
cat("STATEMENT_EXECUTED/OSPRPUIQLJ/\n");

#empty line
plot_MFKLEBMTFJ<-function (table){
 
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
 
png("/Users/mas2182/temp/metaR_results/2/StyleHierarchy/plot_MFKLEBMTFJ_5.png",width=300,height=300)
plot_MFKLEBMTFJ(NULL)
ignore<-dev.off()
 #empty line
plot_RSAUDXCOCL<-function (table){
 
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
plot(x=table$"AveExpr",y=table$"logFC",col=ifelse(table$"genes"%in%sel_genes,"red","black"),pch=ifelse(table$"genes"%in%sel_genes,19,18),cex=ifelse(table$"genes"%in%sel_genes,0.6,0.2),ylab=bquote("log"[2]~"fold change"),xlab=bquote("log"[2]~"expression"),yaxt="n",NULL,NULL,main="QC for GSE")
axis(side=2,at=seq(-100,100,by=0.5))
segments(x0=-1.0,y0=-1000,x1=-1.0,y1=1000,lty="dashed")
segments(x0=-1000,y0=0,x1=1000,y1=0,lty="dashed")
#label genes of interest:
labels<-character(length=length(table$"genes"))
labels_idx<-which(inGeneList(table))
labels[labels_idx]<-table$"genes"[labels_idx]
text(x=table$"AveExpr",y=table$"logFC",labels=labels,cex=0.0)
}
 
png("/Users/mas2182/temp/metaR_results/2/StyleHierarchy/plot_RSAUDXCOCL_7.png",width=300,height=300)
plot_RSAUDXCOCL(NULL)
ignore<-dev.off()
 #empty line
plot_IBOLYVMOXQ<-function (table){
 
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
plot(x=table$"AveExpr",y=table$"logFC",col=ifelse(table$"genes"%in%sel_genes,"red","black"),pch=ifelse(table$"genes"%in%sel_genes,19,18),cex=ifelse(table$"genes"%in%sel_genes,0.6,0.2),ylab=bquote("log"[2]~"fold change"),xlab=bquote("log"[2]~"expression"),yaxt="n",xlim=c(1,5),ylim=c(1,10),main="QC for GSE")
axis(side=2,at=seq(-100,100,by=0.5))
segments(x0=-1.0,y0=-1000,x1=-1.0,y1=1000,lty="dashed")
segments(x0=-1000,y0=0,x1=1000,y1=0,lty="dashed")
#label genes of interest:
labels<-character(length=length(table$"genes"))
labels_idx<-which(inGeneList(table))
labels[labels_idx]<-table$"genes"[labels_idx]
text(x=table$"AveExpr",y=table$"logFC",labels=labels,cex=0.0)
}
 
png("/Users/mas2182/temp/metaR_results/2/StyleHierarchy/plot_IBOLYVMOXQ_9.png",width=300,height=300)
plot_IBOLYVMOXQ(NULL)
ignore<-dev.off()
 #empty line
plot_DUEULNHSEQ<-function (table){
 
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
plot(x=table$"AveExpr",y=table$"logFC",col=ifelse(table$"genes"%in%sel_genes,"red","black"),pch=ifelse(table$"genes"%in%sel_genes,19,18),cex=ifelse(table$"genes"%in%sel_genes,0.6,0.2),ylab=bquote("log"[2]~"fold change"),xlab=bquote("log"[2]~"expression"),yaxt="n",xlim=c(1,1),ylim=c(1,1),main="QC with 0.5")
axis(side=2,at=seq(-100,100,by=0.5))
segments(x0=-1.0,y0=-1000,x1=-1.0,y1=1000,lty="dashed")
segments(x0=-1000,y0=0,x1=1000,y1=0,lty="dashed")
#label genes of interest:
labels<-character(length=length(table$"genes"))
labels_idx<-which(inGeneList(table))
labels[labels_idx]<-table$"genes"[labels_idx]
text(x=table$"AveExpr",y=table$"logFC",labels=labels,cex=2.0)
}
 
png("/Users/mas2182/temp/metaR_results/2/StyleHierarchy/plot_DUEULNHSEQ_11.png",width=300,height=300)
plot_DUEULNHSEQ(NULL)
ignore<-dev.off()
 #empty line
# Layout plots in a grid:
plot_DJELQBYART = function(ignore) 
{
#par(mfrow=c(2,2)) 
layout(matrix(c(1:4), byrow=TRUE, 2, 2), widths=c(300.0,300.0), heights=c(300.0,300.0))
plot_MFKLEBMTFJ();
plot_RSAUDXCOCL();
plot_IBOLYVMOXQ();
plot_DUEULNHSEQ();
}

png(file="/Users/mas2182/temp/metaR_results/2/StyleHierarchy/plot_DJELQBYART_13.png", width=600.0, height=600.0)
plot_DJELQBYART(null)
ignore <- dev.off()
cat("STATEMENT_EXECUTED/DJELQBYART/\n");

pdf("/Users/mas2182/temp/metaR_results/2/StyleHierarchy/MAplot.pdf", width=6, height=4, onefile=FALSE )
plot_DJELQBYART(null)
ignore <- dev.off()
cat("STATEMENT_EXECUTED/DBEGHVLIAY/\n");


