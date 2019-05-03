#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 11:00:00
#SBATCH -J Tophat_Align_to_polished_DNA
#SBATCH --mail-type=ALL
#SBATCH --mail-user jiarong.liang.0178@student.uu.se

# Load modules
module load bioinfo-tools
module load samtools 
module load bowtie2
module load tophat


tophat -o /domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/tophatout/SRR6156069  \
-p 4 /domus/h1/jili0178/GA2019/analyses_results/02_polishDNA/pilon_out_for0411_0427/pilon_out_0427 \
 /domus/h1/jili0178/GA2019/Genome_Analysis/data/trimmed_RNA/SRR6156069_scaffold_06.1.fastq.gz \
  /domus/h1/jili0178/GA2019/Genome_Analysis/data/trimmed_RNA/SRR6156069_scaffold_06.2.fastq.gz 


tophat -o /domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/tophatout/SRR6156067 \
	-p 4 \
    /domus/h1/jili0178/GA2019/analyses_results/02_polishDNA/pilon_out_for0411_0427/pilon_out_0427 \
    /domus/h1/jili0178/GA2019/Genome_Analysis/data/trimmed_RNA/SRR6156067_scaffold_06.1.fastq.gz \
    /domus/h1/jili0178/GA2019/Genome_Analysis/data/trimmed_RNA/SRR6156067_scaffold_06.2.fastq.gz 



tophat -o /domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/tophatout/SRR6156066 \
	-p 4 \
    /domus/h1/jili0178/GA2019/analyses_results/02_polishDNA/pilon_out_for0411_0427/pilon_out_0427 \
    /domus/h1/jili0178/GA2019/Genome_Analysis/data/trimmed_RNA/SRR6156066_scaffold_06.1.fastq.gz \
    /domus/h1/jili0178/GA2019/Genome_Analysis/data/trimmed_RNA/SRR6156066_scaffold_06.2.fastq.gz 


tophat -o /domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/tophatout/SRR6040097 \
	-p 4 \
    /domus/h1/jili0178/GA2019/analyses_results/02_polishDNA/pilon_out_for0411_0427/pilon_out_0427 \
    /domus/h1/jili0178/GA2019/Genome_Analysis/data/trimmed_RNA/SRR6040097_scaffold_06.1.fastq.gz \
    /domus/h1/jili0178/GA2019/Genome_Analysis/data/trimmed_RNA/SRR6040097_scaffold_06.2.fastq.gz 



tophat -o /domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/tophatout/SRR6040096 \
	-p 4 \
    /domus/h1/jili0178/GA2019/analyses_results/02_polishDNA/pilon_out_for0411_0427/pilon_out_0427 \
    /domus/h1/jili0178/GA2019/Genome_Analysis/data/trimmed_RNA/SRR6040096_scaffold_06.1.fastq.gz \
    /domus/h1/jili0178/GA2019/Genome_Analysis/data/trimmed_RNA/SRR6040096_scaffold_06.2.fastq.gz 


tophat -o /domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/tophatout/SRR6040094 \
	-p 4 \
    /domus/h1/jili0178/GA2019/analyses_results/02_polishDNA/pilon_out_for0411_0427/pilon_out_0427 \
    /domus/h1/jili0178/GA2019/Genome_Analysis/data/trimmed_RNA/SRR6040094_scaffold_06.1.fastq.gz \
    /domus/h1/jili0178/GA2019/Genome_Analysis/data/trimmed_RNA/SRR6040094_scaffold_06.2.fastq.gz 



tophat -o /domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/tophatout/SRR6040093 \
	-p 4 \
    /domus/h1/jili0178/GA2019/analyses_results/02_polishDNA/pilon_out_for0411_0427/pilon_out_0427 \
    /domus/h1/jili0178/GA2019/Genome_Analysis/data/trimmed_RNA/SRR6040093_scaffold_06.1.fastq.gz \
    /domus/h1/jili0178/GA2019/Genome_Analysis/data/trimmed_RNA/SRR6040093_scaffold_06.2.fastq.gz 


tophat -o /domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/tophatout/SRR6040092 \
	-p 4 \
    /domus/h1/jili0178/GA2019/analyses_results/02_polishDNA/pilon_out_for0411_0427/pilon_out_0427 \
    /domus/h1/jili0178/GA2019/Genome_Analysis/data/trimmed_RNA/SRR6040092_scaffold_06.1.fastq.gz \
    /domus/h1/jili0178/GA2019/Genome_Analysis/data/trimmed_RNA/SRR6040092_scaffold_06.2.fastq.gz