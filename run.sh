#!/bin/bash
#SBATCH --job-name=txt2img
#SBATCH --partition=batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --time 1-12:00:00

#SBATCH --output=out.txt

### Cargar el entorno del usuario incluyendo la funcionalidad de modules
### No tocar
#. /etc/profile

### Configurar OpenMP/MKL/etc con la cantidad de cores detectada.
export OMP_NUM_THREADS=10
export MKL_NUM_THREADS=10
export OPENBLAS_NUM_THREADS=10

srun python train_txt2im.py
