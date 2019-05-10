#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 20:00:00
#SBATCH -J Tophat_Align_to_polished_DNA
#SBATCH --mail-type=ALL
#SBATCH --mail-user jiarong.liang.0178@student.uu.se

# Load modules
module load bioinfo-tools
module load samtools 
module load trinity


Trinity --genome_guided_bam \
/domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/sorted_tophat/merged_sorted.bam \
-genome_guided_max_intron 10000 \
--max_memory 20G --CPU 4 \
--output /domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/trinity_out/trinity_merged


Trinity --genome_guided_bam \
/domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/sorted_tophat/SRR6156069_sorted.bam \
-genome_guided_max_intron 10000 \
--max_memory 20G --CPU 4 \
--output /domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/trinity_out/trinity_SRR6156069

Trinity --genome_guided_bam \
/domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/sorted_tophat/SRR6156067_sorted.bam \
-genome_guided_max_intron 10000 \
--max_memory 20G --CPU 4 \
--output /domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/trinity_out/trinity_SRR6156067

Trinity --genome_guided_bam \
/domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/sorted_tophat/SRR6156066_sorted.bam \
-genome_guided_max_intron 10000 \
--max_memory 20G --CPU 4 \
--output /domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/trinity_out/trinity_SRR6156066

Trinity --genome_guided_bam \
/domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/sorted_tophat/SRR6040097_sorted.bam \
-genome_guided_max_intron 10000 \
--max_memory 20G --CPU 4 \
--output /domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/trinity_out/trinity_SRR6040097

Trinity --genome_guided_bam \
/domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/sorted_tophat/SRR6040096_sorted.bam \
-genome_guided_max_intron 10000 \
--max_memory 20G --CPU 4 \
--output /domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/trinity_out/trinity_SRR6040096

Trinity --genome_guided_bam \
/domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/sorted_tophat/SRR6040094_sorted.bam \
-genome_guided_max_intron 10000 \
--max_memory 20G --CPU 4 \
--output /domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/trinity_out/trinity_SRR6040094

Trinity --genome_guided_bam \
/domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/sorted_tophat/SRR6040093_sorted.bam \
-genome_guided_max_intron 10000 \
--max_memory 20G --CPU 4 \
--output /domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/trinity_out/trinity_SRR6040093

Trinity --genome_guided_bam \
/domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/sorted_tophat/SRR6040092_sorted.bam \
-genome_guided_max_intron 10000 \
--max_memory 20G --CPU 4 \
--output /domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/trinity_out/trinity_SRR6040092

