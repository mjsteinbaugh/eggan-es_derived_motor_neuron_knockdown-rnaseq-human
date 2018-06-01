# Consult the GitHub repo for detailed installation instructions
# https://github.com/hbc/bcbioRNASeq

# R 3.4 and Bioconductor 3.6 were used for analysis
# https://www.r-project.org
# https://bioconductor.org/packages/3.6/bioc/html/BiocInstaller.html

# Alternatively, can install pinned version with bioconda
# https://anaconda.org/bioconda/r-bcbiornaseq

# Bioconductor
# try http:// if https:// URLs are not supported
source("https://bioconductor.org/biocLite.R")
biocLite("devtools")
library(devtools)

# DESeq2 v1.18.1 was used for differential expression
# https://bioconductor.org/packages/3.6/bioc/html/DESeq2.html
install_url("https://bioconductor.org/packages/3.6/bioc/src/contrib/DESeq2_1.18.1.tar.gz")

# Pinned dependencies for bcbioRNASeq
biocLite("steinbaugh/basejump", ref = "v0.3.1", dependencies = FALSE)
biocLite("hbc/bcbioBase", ref = "v0.1.4", dependencies = FALSE)
biocLite("hbc/bcbioRNASeq", ref = "v0.1.6", dependencies = FALSE)

library(bcbioRNASeq)
help(package = "bcbioRNASeq")
