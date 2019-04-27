#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 3:00:00
#SBATCH -J DNA_polish_pilon
#SBATCH --mail-type=ALL
#SBATCH --mail-user jiarong.liang.0178@student.uu.se
# Load modules
module load bioinfo-tools
module load Pilon
module load bwa
module load samtools
module load sambamba
# Your commands
bwa index -p /domus/h1/jili0178/GA2019/analyses_results/01_assemblyDNA/durian_pacbio_0405_44m_22pm/durian_pacbio_assembly_0405_44m_22pm.contigs /domus/h1/jili0178/GA2019/analyses_results/01_assemblyDNA/durian_pacbio_0405_44m_22pm/durian_pacbio_assembly_0405_44m_22pm.contigs.fasta
bwa mem -t 20 /domus/h1/jili0178/GA2019/analyses_results/01_assemblyDNA/durian_pacbio_0405_44m_22pm/durian_pacbio_assembly_0405_44m_22pm.contigs /domus/h1/jili0178/GA2019/Genome_Analysis/data/illumina_DNA/SRR6058604_scaffold_06.1P.fastq.gz /domus/h1/jili0178/GA2019/Genome_Analysis/data/illumina_DNA/SRR6058604_scaffold_06.2P.fastq.gz | samtools sort -@ 10 -O bam -o align.bam
samtools index -@ 10 align.bam
sambamba markdup -t 10 align.bam align_markdup.bam
samtools view -@ 10 -q 30 align_markdup.bam > align_filter.bam
samtools index -@ 10 align_filter.bam
pilon --genome /domus/h1/jili0178/GA2019/analyses_results/01_assemblyDNA/durian_pacbio_0405_44m_22pm/durian_pacbio_assembly_0405_44m_22pm.contigs.fasta --bam align_filer.bam --fix snps,indels --output pilon_polished --vcf &> pilon.log


