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

for name in merged

do

Trinity --genome_guided_bam \
/domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/sorted_tophat/${name}_sorted.bam \
-genome_guided_max_intron 10000 \
--max_memory 10G --CPU 4 \
--output /domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/trinity_out/trinity_${name}

done