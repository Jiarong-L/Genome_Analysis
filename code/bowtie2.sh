#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 1:00:00
#SBATCH -J bowtie2_build_index
#SBATCH --mail-type=ALL
#SBATCH --mail-user jiarong.liang.0178@student.uu.se

# Load modules
module load bioinfo-tools
module load bowtie2

bowtie2-build /domus/h1/jili0178/GA2019/analyses_results/02_polishDNA/pilon_out_for0411_0427/pilon_out_0427.fasta /domus/h1/jili0178/GA2019/analyses_results/02_polishDNA/pilon_out_for0411_0427/pilon_out_0427