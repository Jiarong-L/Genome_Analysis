#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 23:00:00
#SBATCH -J optimize_augustus
#SBATCH --mail-type=ALL
#SBATCH --mail-user jiarong.liang.0178@student.uu.se

# Load modules
module load bioinfo-tools
module load maker/3.01.1-beta
module load blat/35

cd /domus/h1/jili0178/GA2019/analyses_results/04_annotation/round1_maker.output/
export AUGUSTUS_CONFIG_PATH=/domus/h1/jili0178/GA2019/analyses_results/04_annotation/round1_maker.output/config
optimize_augustus.pl --species=my_species augustus.gbk.train
etraining --species=my_species augustus.gbk.train
augustus --species=my_species augustus.gbk.test | tee second_training.out

