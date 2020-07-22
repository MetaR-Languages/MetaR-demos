


#Script generated from Diffexp

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











if (!require("plyr")) {install.packages("plyr",repos='http://cran.us.r-project.org'); library("plyr")};
if (!require("Cairo")) {install.packages("Cairo",repos='http://cran.us.r-project.org'); library("Cairo")};
if (!require("limma")) {install.packages("limma",repos='http://cran.us.r-project.org'); library("limma")};
if (!require("data.table")) {install.packages("data.table",repos='http://cran.us.r-project.org'); library("data.table")};
if (!require("edgeR")) {install.packages("edgeR",repos='http://cran.us.r-project.org'); library("edgeR")};
if (!require("pheatmap")) {install.packages("pheatmap",repos='http://cran.us.r-project.org'); library("pheatmap")};


#empty line
GSE59364_DC_all.csv <- fread("/Users/mas2182/WORK/CTSC/Projects/MetaR_demos/input-data/GSE59364_DC_all.csv", colClasses=c("character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))
cat("STATEMENT_EXECUTED/JXACHQTPNC/\n");

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
cat("STATEMENT_EXECUTED/NFULYHOFFB/\n")
write.table(results,"/Users/manuelesimi/MPSProjects/Stroke/temp-results/DifferentialExpressionWithLimma/table_results_0.tsv", row.names=FALSE, sep="\t") 
cat("STATEMENT_EXECUTED/NFULYHOFFB/\n");

#empty line

setkey(results, "genes")
setkey(GSE59364_DC_all.csv, "gene")
GSE59364_DC_all.csv <- plyr::rename(GSE59364_DC_all.csv, c("gene"="genes"))

tableSuffixes=c("", "")
joiningColumns=c("genes")
nextTableToMergeInto=results

nextTableToMergeFrom=GSE59364_DC_all.csv
mergedGSE59364_DC_all.csv <- merge(nextTableToMergeInto, nextTableToMergeFrom, by=joiningColumns, suffixes=tableSuffixes)
nextTableToMergeInto=mergedGSE59364_DC_all.csv
joined <- mergedGSE59364_DC_all.csv
rm(mergedGSE59364_DC_all.csv)

# Add the columns back in the destination:
joined <- data.table(joined)[,"gene":=joined$"genes"]

# Add the rename back source columns


GSE59364_DC_all.csv <- plyr::rename(GSE59364_DC_all.csv, c("genes"="gene"))
write.table(joined,"/Users/manuelesimi/MPSProjects/Stroke/temp-results/DifferentialExpressionWithLimma/table_joined_0.tsv", row.names=FALSE, sep="\t") 
cat("STATEMENT_EXECUTED/WCHSIDUDDH/\n");

#empty line

subset <- joined[joined$"adj.P.Val" < 0.0001]
if (nrow(subset)==0) {
  cat("Warning: Subset removed all rows of table joined. Following statements may fail if they expect results after filtering.\n")
}
write.table(subset,"/Users/manuelesimi/MPSProjects/Stroke/temp-results/DifferentialExpressionWithLimma/table_subset_0.tsv", row.names=FALSE, sep="\t") 

cat("STATEMENT_EXECUTED/RFCTQOJIFN/\n");

#empty line
plot_QEGVPKFBDM=function(t)
{
LegendFrame=data.frame(c("LPS=no","LPS=no","LPS=no","LPS=yes","LPS=yes","LPS=yes","LPS=yes","LPS=no","LPS=yes","LPS=no","LPS=yes","LPS=yes","LPS=no","LPS=no"), c("A_DC","B_DC","C_DC","C3DCLPS","A_DC_LPS","B_DC_LPS","C_DC_LPS","C3DC","C2DCLPS","C2DC","DCLPS0910","DCLPS0913","DC0904","DC0907"))

colnames(LegendFrame)=c("Group","SampleId")
# reorder by group name:
LegendFrameSorted=LegendFrame[order(LegendFrame$Group,LegendFrame$SampleId),]
rownames(LegendFrameSorted)=NULL
sampleNames=c("A_DC","B_DC","C_DC","C3DC","C2DC","DC0904","DC0907","C3DCLPS","A_DC_LPS","B_DC_LPS","C_DC_LPS","C2DCLPS","DCLPS0910","DCLPS0913")
MX<-data.matrix(subset(subset,  select=sampleNames))
MX2<-MX
#MX2=MX2[,order(LegendFrame$Group,LegendFrame$SampleId)]
cluster=TRUE
if(dim(MX)[1]==1){MX2=t(MX2); cluster=FALSE}
annotations=data.frame(
  LPS_treatment=factor(c("LPS_no", "LPS_no", "LPS_no", "LPS_no", "LPS_no", "LPS_no", "LPS_no", "LPS_yes", "LPS_yes", "LPS_yes", "LPS_yes", "LPS_yes", "LPS_yes", "LPS_yes"))  ,
         row.names=c(sampleNames)
)


#rownames(annotation)=c("A_DC", "B_DC", "C_DC", "C3DCLPS", "A_DC_LPS", "B_DC_LPS", "C_DC_LPS", "C3DC", "C2DCLPS", "C2DC", "DCLPS0910", "DCLPS0913", "DC0904", "DC0907")
rownames(MX2) = apply(subset(subset,select=c("genes")),1, function(x) x)
as.data.frame(LegendFrameSorted[,-2]) -> legend
row.names(legend)=LegendFrameSorted$SampleId
# re-label Annotation to "Group"
colnames(legend) <- "Group"
#Replace infinite values with NAs:
is.na(MX2) <- sapply(MX2, is.infinite)

# Exclude NAs from table, they cause this cryptic error message: Error in do_one(nmeth) : NA/NaN/Inf in foreign function call 
MX2<-MX2[complete.cases(MX2),]
write.table(MX2, file = "/Users/manuelesimi/MPSProjects/Stroke/temp-results/DifferentialExpressionWithLimma/plot_QEGVPKFBDM_9.png.source.tsv",sep="\t")
# Plot the heatmap:
pheatmap(MX2,
         cluster_rows=TRUE,cluster_cols = FALSE,
         border_color="grey60", 
         #filename = "/Users/manuelesimi/MPSProjects/Stroke/temp-results/DifferentialExpressionWithLimma/plot_QEGVPKFBDM_9.png",
         color = colorRampPalette(c("#ffeda0","#feb24c","#f03b20"))(100), 
         clustering_distance_rows="manhattan",
         clustering_distance_cols="manhattan",
         clustering_method="complete",members = NULL,
         kmeans_k = NA,breaks = NA, fontsize=6,
         show_colnames=T,
         annotation=annotations,
         cellwidth = 8, cellheight = 6, fontsize_row=6, scale = "row",
         Legend=TRUE
)
cat("STATEMENT_EXECUTED/QEGVPKFBDM/\n");

}
png(file="/Users/manuelesimi/MPSProjects/Stroke/temp-results/DifferentialExpressionWithLimma/plot_QEGVPKFBDM_9.png", width=400, height=200)
plot_QEGVPKFBDM(subset)
ignore <- dev.off()
cat("STATEMENT_EXECUTED/QEGVPKFBDM/\n");

#empty line
# Layout plots in a grid:
plot_FJMSAJGNLW = function(ignore) 
{
#par(mfrow=c(1,1)) 
layout(matrix(c(1:1), byrow=TRUE, 1, 1), widths=c(400.0), heights=c(200.0))
plot_QEGVPKFBDM(subset);
}

png(file="/Users/manuelesimi/MPSProjects/Stroke/temp-results/DifferentialExpressionWithLimma/plot_FJMSAJGNLW_11.png", width=700, height=1300)
plot_FJMSAJGNLW(null)
ignore <- dev.off()
cat("STATEMENT_EXECUTED/FJMSAJGNLW/\n");

pdf("/Users/manuelesimi/MPSProjects/Stroke/temp-results/DifferentialExpressionWithLimma/heatmap.pdf", width=6, height=4, onefile=FALSE )
plot_QEGVPKFBDM(subset)
ignore <- dev.off()
cat("STATEMENT_EXECUTED/OQASODQNQK/\n");

pdf("/Users/manuelesimi/MPSProjects/Stroke/temp-results/DifferentialExpressionWithLimma/multi.pdf", width=5.555555555555555, height=2.7777777777777777, onefile=FALSE )
plot_FJMSAJGNLW(null)
ignore <- dev.off()
cat("STATEMENT_EXECUTED/UKBYCTOIEQ/\n");


