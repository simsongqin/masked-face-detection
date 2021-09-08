#!/bin/sh
#SBATCH --partition=SCSEGPU_UG
#SBATCH --gres=gpu:1
#SBATCH --nodes=1
#SBATCH --mem=128G
#SBATCH --job-name=extract
#SBATCH --output=mean.out
#SBATCH --error=Mean.err

module load anaconda
source activate base
python extract_mask_dic_mean.py
