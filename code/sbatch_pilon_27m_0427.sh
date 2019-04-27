#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 5:00:00
#SBATCH -J DNA_polish_pilon
#SBATCH --mail-type=ALL
#SBATCH --mail-user jiarong.liang.0178@student.uu.se
# Load modules
module load bioinfo-tools
module load Pilon
module load bwa
module load samtools


# Your commands
bwa index -a bwtsw /domus/h1/jili0178/GA2019/analyses_results/01_assemblyDNA/durian_pacbio_0411_27m/durian_pacbio_assembly_0411_27m.contigs.fasta
bwa mem /domus/h1/jili0178/GA2019/analyses_results/01_assemblyDNA/durian_pacbio_0411_27m/durian_pacbio_assembly_0411_27m.contigs.fasta /domus/h1/jili0178/GA2019/Genome_Analysis/data/illumina_DNA/SRR6058604_scaffold_06.1P.fastq.gz /domus/h1/jili0178/GA2019/Genome_Analysis/data/illumina_DNA/SRR6058604_scaffold_06.2P.fastq.gz > /domus/h1/jili0178/GA2019/analyses_results/02_polishDNA/bwa_for0411_0427.sam
samtools view -Sb /domus/h1/jili0178/GA2019/analyses_results/02_polishDNA/bwa_for0411_0427.sam > /domus/h1/jili0178/GA2019/analyses_results/02_polishDNA/bwa_for0411_0427.bam
samtools sort /domus/h1/jili0178/GA2019/analyses_results/02_polishDNA/bwa_for0411_0427.bam -o /domus/h1/jili0178/GA2019/analyses_results/02_polishDNA/bwa_for0411_0427.sorted.bam
samtools index  -@ 10 -b /domus/h1/jili0178/GA2019/analyses_results/02_polishDNA/bwa_for0411_0427.sorted.bam /domus/h1/jili0178/GA2019/analyses_results/02_polishDNA/bwa_for0411_0427.sorted.bam.bai

pilon --genome /domus/h1/jili0178/GA2019/analyses_results/01_assemblyDNA/durian_pacbio_0411_27m/durian_pacbio_assembly_0411_27m.contigs.fasta --bam /domus/h1/jili0178/GA2019/analyses_results/02_polishDNA/bwa_for0411_0427.sorted.bam --output pilon_out_for0411_0427 --outdir /domus/h1/jili0178/GA2019/analyses_results/02_polishDNA/pilon_out_for0411_0427 --diploid --threads 4
