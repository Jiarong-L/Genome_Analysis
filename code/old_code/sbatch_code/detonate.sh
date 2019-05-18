#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 5:00:00
#SBATCH -J detonate
#SBATCH --mail-type=ALL
#SBATCH --mail-user jiarong.liang.0178@student.uu.se

# Load modules
module load bioinfo-tools
module load bowtie2
module load bowtie
module load samtools


cd /domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/quality_RNA

/domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/quality_RNA/detonate-1.11/rsem-eval/rsem-eval-calculate-score \
--transcript-length-parameters /domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/quality_RNA/detonate_transcript_length_distribution \
--paired-end SRR6040097_scaffold_06.1.fastq,SRR6040096_scaffold_06.1.fastq,SRR6040093_scaffold_06.1.fastq,SRR6040092_scaffold_06.1.fastq \
SRR6040097_scaffold_06.2.fastq,SRR6040096_scaffold_06.2.fastq,SRR6040093_scaffold_06.2.fastq,SRR6040092_scaffold_06.2.fastq \
/domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/trinity_out/trinity_merged/Trinity-GG.fasta \
detonate_out 1673