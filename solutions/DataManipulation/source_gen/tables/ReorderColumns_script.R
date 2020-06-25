


#Script generated from ReorderColumns

#Create installation dir for packages
libDir <- "/Users/mas2182/.metaRlibs"
dir.create(file.path(libDir), showWarnings = FALSE, recursive = TRUE)
.libPaths(c(libDir))

#create the output dir
dir.create(file.path("/Users/mas2182/temp/metaR_results/2"), showWarnings = FALSE, recursive = TRUE)






if (!require("data.table")) {install.packages("data.table",repos='http://cran.us.r-project.org'); library("data.table")};
if (!require("ztable")) {install.packages("ztable",repos='http://cran.us.r-project.org'); library("ztable")};


GSE59364_DC_all.csv <- fread("/Users/mas2182/WORK/CTSC/Projects/MetaR_demos/input-data/GSE59364_DC_all.csv", colClasses=c("character", "numeric", "numeric", "numeric", "numeric"))
cat("STATEMENT_EXECUTED/YWSPANJLKB/\n");

#empty line
if(file.exists("/Users/mas2182/temp/metaR_results/2/tables/htmltable_GSE59364_DC_all.csv_KWRAFCWVMJ.html")) {
file.remove("/Users/mas2182/temp/metaR_results/2/tables/htmltable_GSE59364_DC_all.csv_KWRAFCWVMJ.html")

}

options(ztable.type="html")
options(ztable.zebra=NULL)


options(ztable.colnames.bold=TRUE)
data= as.data.table(GSE59364_DC_all.csv)



table_preview_GSE59364_DC_all.csv= ztable(data[1: min(nrow(data),10), 1: min(ncol(data),4), with=FALSE], caption = "" , caption.placement="bottom",caption.position="l",size=5)

sink("/Users/mas2182/temp/metaR_results/2/tables/htmltable_GSE59364_DC_all.csv_KWRAFCWVMJ.html")
print(table_preview_GSE59364_DC_all.csv); flush.console()
sink()
# there is an bug in the generation of the header part of the html table so we manually have to fix it
table_preview_GSE59364_DC_all.csv_content= readLines("/Users/mas2182/temp/metaR_results/2/tables/htmltable_GSE59364_DC_all.csv_KWRAFCWVMJ.html", warn = FALSE)
table_preview_GSE59364_DC_all.csv_content_sub= gsub("<th <th","<th",table_preview_GSE59364_DC_all.csv_content)
if(file.exists("/Users/mas2182/temp/metaR_results/2/tables/htmltable_GSE59364_DC_all.csv_KWRAFCWVMJ.html")) {
file.remove("/Users/mas2182/temp/metaR_results/2/tables/htmltable_GSE59364_DC_all.csv_KWRAFCWVMJ.html")
}


sink("/Users/mas2182/temp/metaR_results/2/tables/htmltable_GSE59364_DC_all.csv_KWRAFCWVMJ.html")
cat(paste(table_preview_GSE59364_DC_all.csv_content_sub,""));flush.console()

sink()




cat("STATEMENT_EXECUTED/KWRAFCWVMJ/\n");


OrderTable<-data.table("mRNA len"=GSE59364_DC_all.csv$"mRNA len","genomic span"=GSE59364_DC_all.csv$"genomic span","DC_normal"=GSE59364_DC_all.csv$"DC_normal","gene"=GSE59364_DC_all.csv$"gene","DC_treated"=GSE59364_DC_all.csv$"DC_treated");

#colnames(OrderTable)<-c("mRNA len","genomic span","DC_normal","gene","DC_treated");

write.table(OrderTable,"/Users/mas2182/temp/metaR_results/2/tables/table_OrderTable_0.tsv", row.names=FALSE, sep="\t") 


cat("STATEMENT_EXECUTED/KUHHCKLYAI/\n");





if(file.exists("/Users/mas2182/temp/metaR_results/2/tables/htmltable_OrderTable_QIIRBPYQNK.html")) {
file.remove("/Users/mas2182/temp/metaR_results/2/tables/htmltable_OrderTable_QIIRBPYQNK.html")

}

options(ztable.type="html")
options(ztable.zebra=NULL)


options(ztable.colnames.bold=TRUE)
data= as.data.table(OrderTable)



table_preview_OrderTable= ztable(data[1: min(nrow(data),10), 1: min(ncol(data),4), with=FALSE], caption = "" , caption.placement="bottom",caption.position="l",size=5)

sink("/Users/mas2182/temp/metaR_results/2/tables/htmltable_OrderTable_QIIRBPYQNK.html")
print(table_preview_OrderTable); flush.console()
sink()
# there is an bug in the generation of the header part of the html table so we manually have to fix it
table_preview_OrderTable_content= readLines("/Users/mas2182/temp/metaR_results/2/tables/htmltable_OrderTable_QIIRBPYQNK.html", warn = FALSE)
table_preview_OrderTable_content_sub= gsub("<th <th","<th",table_preview_OrderTable_content)
if(file.exists("/Users/mas2182/temp/metaR_results/2/tables/htmltable_OrderTable_QIIRBPYQNK.html")) {
file.remove("/Users/mas2182/temp/metaR_results/2/tables/htmltable_OrderTable_QIIRBPYQNK.html")
}


sink("/Users/mas2182/temp/metaR_results/2/tables/htmltable_OrderTable_QIIRBPYQNK.html")
cat(paste(table_preview_OrderTable_content_sub,""));flush.console()

sink()




cat("STATEMENT_EXECUTED/QIIRBPYQNK/\n");

#empty line
#empty line
#empty line

