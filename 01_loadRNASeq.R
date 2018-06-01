# bcbioRNASeq v0.1.6
library(bcbioRNASeq)
bcb <- loadRNASeq(
    uploadDir = file.path("illumina_rnaseq", "final"),
    organism = "Homo sapiens",
    genomeBuild = "GRCh37"
)
saveData(bcb, dir = file.path("data", Sys.Date()))
