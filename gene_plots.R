library(bcbioRNASeq)
load("data/2018-02-02/bcb.rda")

interestingGroups(bcb) <- c("category", "treatment")

upregulated <- c(
    "ALOX5AP" = "ENSG00000132965",
    "NAT8L" = "ENSG00000185818"
)
downregulated <- c(
    "STMN2" = "ENSG00000104435",
    "ELAVL3" = "ENSG00000196361",
    "HBEGF" = "ENSG00000113070",
    "PFKP" = "ENSG00000067057",
    "RCAN1" = "ENSG00000159200",
    "SMAD6" = "ENSG00000137834",
    "SELPLG" = "ENSG00000110876",
    "GDF6" = "ENSG00000156466"
)

pdf("gene_plots.pdf", width = 10, height = 10)
# TDP-43 = TARDBP
plotGene(bcb, genes = c("TARDBP" = "ENSG00000120948"))
plotGene(bcb, genes = upregulated)
plotGene(bcb, genes = downregulated)
dev.off()

# Use the rlog counts for gene plots
