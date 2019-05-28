#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 1:00:00
#SBATCH -J hiseq_for_round1
#SBATCH --mail-type=ALL
#SBATCH --mail-user jiarong.liang.0178@student.uu.se


module load bioinfo-tools
module load samtools/1.9
module load htseq/0.9.1

cd /domus/h1/jili0178/GA2019/analyses_results/07_differential_analyses/round1


htseq-count -f bam -t CDS -i Name -r pos --stranded=no /domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/sorted_tophat/SRR6040097_sorted.bam \
/domus/h1/jili0178/GA2019/analyses_results/04_annotation/round1_maker.output/genome.gff3 > rna_SRR6040097_counts.txt

htseq-count -f bam -t CDS -i Name -r pos --stranded=no /domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/sorted_tophat/SRR6040096_sorted.bam \
/domus/h1/jili0178/GA2019/analyses_results/04_annotation/round1_maker.output/genome.gff3 > rna_SRR6040096_counts.txt

htseq-count -f bam -t CDS -i Name -r pos --stranded=no /domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/sorted_tophat/SRR6040093_sorted.bam \
/domus/h1/jili0178/GA2019/analyses_results/04_annotation/round1_maker.output/genome.gff3 > rna_SRR6040093_counts.txt

htseq-count -f bam -t CDS -i Name -r pos --stranded=no /domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/sorted_tophat/SRR6040092_sorted.bam \
/domus/h1/jili0178/GA2019/analyses_results/04_annotation/round1_maker.output/genome.gff3 > rna_SRR6040092_counts.txt



#The currect usage: add --stranded=no, since my RNA illumina method is not standard
#Then -r name    ,since memory exceeded
