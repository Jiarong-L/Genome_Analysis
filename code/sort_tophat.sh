#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 11:00:00
#SBATCH -J Sort_tophatout
#SBATCH --mail-type=ALL
#SBATCH --mail-user jiarong.liang.0178@student.uu.se

# Load modules
module load bioinfo-tools
module load samtools 


samtools sort /domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/tophatout/SRR6156069/accepted_hits.bam  \
-o /domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/sorted_tophat/SRR6156069_sorted.bam

samtools sort /domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/tophatout/SRR6156067/accepted_hits.bam  \
-o /domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/sorted_tophat/SRR6156067_sorted.bam

samtools sort /domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/tophatout/SRR6156066/accepted_hits.bam  \
-o /domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/sorted_tophat/SRR6156066_sorted.bam

samtools sort /domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/tophatout/SRR6040097/accepted_hits.bam  \
-o /domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/sorted_tophat/SRR6040097_sorted.bam

samtools sort /domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/tophatout/SRR6040096/accepted_hits.bam  \
-o /domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/sorted_tophat/SRR6040096_sorted.bam

samtools sort /domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/tophatout/SRR6040094/accepted_hits.bam  \
-o /domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/sorted_tophat/SRR6040094_sorted.bam

samtools sort /domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/tophatout/SRR6040093/accepted_hits.bam  \
-o /domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/sorted_tophat/SRR6156069_sorted.bam

samtools sort /domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/tophatout/SRR6040093/accepted_hits.bam  \
-o /domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/sorted_tophat/SRR6156069_sorted.bam










