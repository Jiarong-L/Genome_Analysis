#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 21:00:00
#SBATCH -J DNA_assembly_CANU_0405_22pm
#SBATCH --mail-type=ALL
#SBATCH --mail-user jiarong.liang.0178@student.uu.se
# Load modules
module load bioinfo-tools
module load canu
# Your commands
canu \
 -p durian_pacbio_assembly_0405_44m_22pm -d /domus/h1/jili0178/GA2019/analyses_results/01_assemblyDNA/durian_pacbio_0405_44m_22pm \
 genomeSize=44m \
 stopOnReadQuality=false \
 -pacbio-raw /domus/h1/jili0178/GA2019/Genome_Analysis/data/pacbio_DNA/SRR6037732_scaffold_06.fq.gz