#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 15:00:00
#SBATCH -J Maker_2nd
#SBATCH --mail-type=ALL
#SBATCH --mail-user jiarong.liang.0178@student.uu.se
# Load modules
module load bioinfo-tools
module load maker/3.01.1-beta
module load blat/35
# Your commands

cd /domus/h1/jili0178/GA2019/analyses_results/04_annotation/round1_maker.output

export AUGUSTUS_CONFIG_PATH=/domus/h1/jili0178/GA2019/analyses_results/04_annotation/round1_maker.output/config

cd /domus/h1/jili0178/GA2019/analyses_results/04_annotation

maker