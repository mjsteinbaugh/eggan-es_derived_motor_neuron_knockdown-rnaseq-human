#!/bin/bash

# https://slurm.schedmd.com/sbatch.html

#SBATCH --partition=medium          # Partition (queue)
#SBATCH --time=1-00:00              # Runtime in D-HH:MM format
#SBATCH --job-name=eggan            # Job name
#SBATCH --mem-per-cpu=8G            # Memory needed per CPU
#SBATCH --output=project_%j.out     # File to which STDOUT will be written, including job ID
#SBATCH --error=project_%j.err      # File to which STDERR will be written, including job ID
#SBATCH --mail-type=ALL             # Type of email notification (BEGIN, END, FAIL, ALL)

# Use 6x cores per sample
# 18 x 6 = 108

bcbio_nextgen.py ../config/illumina_rnaseq.yaml -n 108 -t ipython -s slurm -q medium -r t=1-00:00 --retries 3 --timeout 1000
