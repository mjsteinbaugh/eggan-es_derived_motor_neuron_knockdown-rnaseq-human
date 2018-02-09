# https://bioconductor.org/packages/release/bioc/vignettes/DEGreport/inst/doc/DEGreport.pdf
library(bcbioRNASeq)
load("data/2018-02-02/bcb.rda")
load("data/2018-02-09/dds.rda")
load("data/2018-02-09/res.rda")

groups <- levels(dds$category)
pvalue <- 0.05

counts <- counts(dds, normalized = TRUE)

degCheckFactors(counts)

degQC(counts, groups = groups, pvalue = res[["pvalue"]])

resCov <- degCovariates(
    counts = log2(counts(dds) + 0.5),
    metadata = colData(dds))
cor <- degCorCov(colData(dds))

# FIXME Need to add `dir.create()` call to DEGreport
dir.create("degreport", showWarnings = FALSE)
createReport(
    g = colData(dds)[["category"]],
    counts = counts(dds, normalized = TRUE),
    tags = row.names(res),
    pvalues = res[["pvalue"]],
    path = "degreport"
)

rowData(dds) <- cbind(
    rowData(dds),
    annotable(bcb)[rownames(dds), c("ensgene", "symbol"), drop = FALSE]
)

degPlot(
    dds,
    res = res,
    # FIXME This seems to be broken in GitHub version of DEGreport
    ann = "symbol",
    n = 9,
    xs = "category",
    log2 = TRUE,
    color = "black"
)
