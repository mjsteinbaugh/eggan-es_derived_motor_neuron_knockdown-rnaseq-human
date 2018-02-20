source("_setup.R")
data_dir <- file.path("data", Sys.Date())

loadData(bcb, dds, res, resTbl, rld, dir = "data/2018-02-20")

# Prefer the rlog counts (rld.rda) for gene plots
# rlog = "regularized log" (log2 scale)
# help("rlog", "DESeq2")
print(rld)

gene2symbol <- gene2symbol(bcb)

# Define the color palette
# color <- scale_color_viridis(discrete = TRUE)
color <- scale_color_manual(values = c(control = "black", ALS = "red"))



# TDP-43 plots =================================================================
# TDP-43 = TARDBP
# The y-axis scale of the TPM counts is easier to see here
TARDBP <- "ENSG00000120948"
pdf("tpm_tdp-43.pdf", width = 8, height = 8)
plotGene(
    bcb,
    normalized = "tpm",
    genes = TARDBP,
    interestingGroups = "category",
    color = color)
plotGene(
    bcb,
    normalized = "tpm",
    genes = TARDBP,
    interestingGroups = "sampleName")
dev.off()



# Manuscript genes of interest =================================================
manuscript_down <- c(
    TARDBP,
    STMN2 = "ENSG00000104435",
    ELAVL3 = "ENSG00000196361",
    HBEGF = "ENSG00000113070",
    PFKP = "ENSG00000067057",
    RCAN1 = "ENSG00000159200",
    SMAD6 = "ENSG00000137834",
    SELPLG = "ENSG00000110876",
    GDF6 = "ENSG00000156466"
)
pdf("tpm_manuscript_down_grid.pdf", width = 9, height = 9)
plotGene(
    bcb,
    normalized = "tpm",
    genes = manuscript_down,
    interestingGroups = "category",
    color = color,
    return = "grid")
dev.off()

pdf("tpm_manuscript_down_wide.pdf", width = 9, height = 6)
plotGene(
    bcb,
    normalized = "tpm",
    genes = manuscript_down,
    interestingGroups = "category",
    color = color,
    return = "wide")
dev.off()

manuscript_up <- c(
    ALOX5AP = "ENSG00000132965",
    NAT8L = "ENSG00000185818"
)
pdf("tpm_manuscript_up_grid.pdf", width = 6, height = 3)
plotGene(
    bcb,
    normalized = "tpm",
    genes = manuscript_up,
    interestingGroups = "category",
    color = color,
    return = "grid")
dev.off()

pdf("tpm_manuscript_up_wide.pdf", width = 4, height = 6)
plotGene(
    bcb,
    normalized = "tpm",
    genes = manuscript_up,
    interestingGroups = "category",
    color = color,
    return = "wide")
dev.off()

saveData(manuscript_down, manuscript_up, dir = data_dir)



# Top DEGs ========================================================
deg_down <- head(resTbl$degLFCDown$ensgene, 9)
deg_up <- head(resTbl$degLFCUp$ensgene, 9)
pdf("tpm_top_deg_grid.pdf", width = 9, height = 9)
plotGene(
    bcb,
    genes = deg_down,
    normalized = "tpm",
    interestingGroups = "category",
    color = color,
    return = "grid")
plotGene(
    bcb,
    genes = deg_up,
    normalized = "tpm",
    interestingGroups = "category",
    color = color,
    return = "grid")
dev.off()

pdf("tpm_top_deg_wide.pdf", width = 9, height = 6)
plotGene(
    bcb,
    genes = deg_down,
    normalized = "tpm",
    interestingGroups = "category",
    color = color,
    return = "wide")
plotGene(
    bcb,
    genes = deg_up,
    normalized = "tpm",
    interestingGroups = "category",
    color = color,
    return = "wide")
dev.off()
