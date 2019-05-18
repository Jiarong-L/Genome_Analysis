#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 12:00:00
#SBATCH -J new2
#SBATCH --mail-type=ALL
#SBATCH --mail-user jiarong.liang.0178@student.uu.se
# Load modules
module load bioinfo-tools
module load maker
# Your commands


cd /domus/h1/jili0178/GA2019/analyses_results/04_annotation/new2

maker -c 4