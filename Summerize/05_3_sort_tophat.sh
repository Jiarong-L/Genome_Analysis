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



samtools sort /domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/tophatout/SRR6040097/accepted_hits.bam  \
-o /domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/sorted_tophat/SRR6040097_sorted.bam

samtools sort /domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/tophatout/SRR6040096/accepted_hits.bam  \
-o /domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/sorted_tophat/SRR6040096_sorted.bam

samtools sort /domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/tophatout/SRR6040093/accepted_hits.bam  \
-o /domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/sorted_tophat/SRR6040093_sorted.bam

samtools sort /domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/tophatout/SRR6040092/accepted_hits.bam  \
-o /domus/h1/jili0178/GA2019/analyses_results/06_assemblyRNA/sorted_tophat/SRR6040092_sorted.bam










