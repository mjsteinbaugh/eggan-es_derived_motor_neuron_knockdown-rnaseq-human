library(bcbioRNASeq)
bcb <- loadRNASeq(
    uploadDir = file.path("illumina_rnaseq", "final")
)
saveData(bcb, dir = file.path("data", Sys.Date()))
