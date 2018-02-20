library(bcbioRNASeq)
load("data/2018-02-02/bcb.rda")
metadata(bcb)$version
# 0.1.5
bcb_legacy <- bcb

bcb <- updateObject(bcb)
metadata(bcb)$version

# Resave using today's date
saveData(bcb, dir = file.path("data", Sys.Date()))
