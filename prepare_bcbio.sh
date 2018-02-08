# Use the YAML template from seqcloud
# https://github.com/seqcloud/seqcloud/blob/master/workflows/bcbio/rnaseq/illumina/hsapiens.yaml

# Ensure `BD_9` sample is renamed to `BD_09` in the FASTQ file name

# Copy the metadata saved by John
cp metadata/metadata.csv illumina_rnaseq.csv

bcbio_nextgen.py -w template illumina_rnaseq.yaml illumina_rnaseq.csv data/fastq/

cd illumina_rnaseq/work
cp ../../submit_bcbio.sh .
sbatch submit_bcbio.sh
