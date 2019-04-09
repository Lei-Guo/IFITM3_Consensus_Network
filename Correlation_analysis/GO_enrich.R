#example script for gene set enrichment analysis based on code by Bin's GO-MSigDB_EnrichmentTest.zip
source("/sc/orga/projects/zhangb03a/lei_guo/IFITM3/Scripts/Correlation_analysis/MsigDB/R-functions.R")
ontologyfname = "/sc/orga/projects/zhangb03a/lei_guo/IFITM3/Scripts/Correlation_analysis/MsigDB/MSigDB.Selection.v6.1.tsv"

idxGS=1; # which column holds gene symbols
minputfnames = "/sc/orga/projects/zhangb03a/lei_guo/IFITM3/Corr_Results/Genes_sig_cor_IFITM3_consensus.tsv";

totalbackground=NULL # a vector of genes; usually all the genes used for the differential expression or network analysis; if NULL, the genes present in the gene ontology database file (ontologyfname) will be uased as the background

moduleBasedIntersectionMatrix_GeneOntology(fnames=minputfnames, fnameB=ontologyfname, outputDir='', 
     uniqueIdCol=idxGS, signifLevel=0.05, removeDuplicate=TRUE, removeGrey=TRUE,totalbackground=totalbackground)
