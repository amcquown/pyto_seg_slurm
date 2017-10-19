#!/bin/bash

#SBATCH -n 1
#SBATCH -t 0-06:00
#SBATCH -p serial_requeue
#SBATCH --mem-per-cpu=4000
#SBATCH -o %A_%a.out
#SBATCH -e %A_%a.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=amcquown@g.harvard.edu

img_dir=$1

source new-modules.sh
module load Anaconda3/2.1.0-fasrc01
source activate PYTO_SEG_ENV

python3 /n/home06/amcquown/code/pyto_seg_slurm/preprocessing/norm_camera.py -d $img_dir
