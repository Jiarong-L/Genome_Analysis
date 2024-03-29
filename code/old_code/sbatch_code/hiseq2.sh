#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 1:00:00
#SBATCH -J hiseq_for_round1
#SBATCH --mail-type=ALL
#SBATCH --mail-user jiarong.liang.0178@student.uu.se


module load bioinfo-tools
module load samtools/1.9
module load htseq/0.9.1

cd /domus/h1/jili0178/GA2019/analyses_results/07_differential_analyses/round2


htseq-count -f bam -t expressed_sequence_match -i ID -r pos /domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/sorted_tophat/SRR6040097_sorted.bam \
/domus/h1/jili0178/GA2019/analyses_results/04_annotation/round2_maker.output/pilon_out_0427.all.gff > rna_SRR6040097_counts.txt

htseq-count -f bam -t expressed_sequence_match -i ID -r pos /domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/sorted_tophat/SRR6040096_sorted.bam \
/domus/h1/jili0178/GA2019/analyses_results/04_annotation/round2_maker.output/pilon_out_0427.all.gff > rna_SRR6040096_counts.txt

htseq-count -f bam -t expressed_sequence_match -i ID -r pos /domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/sorted_tophat/SRR6040093_sorted.bam \
/domus/h1/jili0178/GA2019/analyses_results/04_annotation/round2_maker.output/pilon_out_0427.all.gff > rna_SRR6040093_counts.txt

htseq-count -f bam -t expressed_sequence_match -i ID -r pos /domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/sorted_tophat/SRR6040092_sorted.bam \
/domus/h1/jili0178/GA2019/analyses_results/04_annotation/round2_maker.output/pilon_out_0427.all.gff > rna_SRR6040092_counts.txt