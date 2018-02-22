source("_setup.R")
library(bcbioRNASeq)
loadData(bcb, res, dir = "data/2018-02-20")
gene2symbol <- gene2symbol(bcb)
genes <- c(
    TARDBP = "ENSG00000120948",
    STMN2 = "ENSG00000104435"
)

plotMA(res, genes = genes, gene2symbol = gene2symbol)
plotVolcano(res, alpha = 0, lfc = 0, genes = genes, gene2symbol = gene2symbol, histograms = FALSE)
