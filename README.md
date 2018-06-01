# ALS implicated protein TDP-43 sustains levels of STMN2, a mediator of motor neuron growth and repair

Joseph R. Klim, et al. (2018)

Code for analysis of [bcbio][] processed RNA-seq data using the [bcbioRNASeq][] [R][] package.

Contact [Michael Steinbaugh][] for additional information.



## Analysis scripts

- `00_pinned_install.R`: [R][] code to install pinned version of [bcbioRNASeq][].
- `01_loadRNASeq.R`: [R][] code to load [bcbio][] processed RNA-seq data.
- `02_quality_control.Rmd`: [R Markdown][] code for quality control analysis.
- `03_differential_expression.Rmd`: [R Markdown][] code for differential expression analysis.
- `04_gene_plots.R`: [R][] code used to generate draft versions of gene expression plots.
- `05_labeled_volcano_and_ma_plots.R`: [R][] code used to generate draft versions of volcano and MA plots.
- `06_degreport.R`: [R][] code used to run additional quality control with [DEGreport][] package.
- `metadata.csv`: Sample metadata.



## Additional

- `bcbio_config`: Files used to configure [bcbio][] run.
- `bcbio_info`: [bcbio][] logs and data versions.



[bcbio]: http://bcbio-nextgen.readthedocs.io
[bcbioRNASeq]: http://bioinformatics.sph.harvard.edu/bcbioRNASeq
[DEGreport]: https://doi.org/doi:10.18129/B9.bioc.DEGreport
[Michael Steinbaugh]: https://mike.steinbaugh.com
[O2]: https://wiki.rc.hms.harvard.edu/display/O2/O2
[R]: https://www.r-project.org
[R Markdown]: https://rmarkdown.rstudio.com
