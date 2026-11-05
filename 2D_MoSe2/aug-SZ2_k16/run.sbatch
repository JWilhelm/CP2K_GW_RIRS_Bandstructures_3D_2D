#!/bin/bash
#SBATCH --job-name=c0035_2D_MoSe2_aug-SZ2_k16
#SBATCH --account=hpc-prf-coopfst
#SBATCH --partition=normal
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=16
#SBATCH --cpus-per-task=8
#SBATCH --exclusive
#SBATCH --mem=0
#SBATCH --time=01:00:00
#SBATCH --chdir=/scratch/hpc-prf-dyncrys/eprop2d1_Jan/02_Claude/0035_2d_vasp_compare/cases/2D_MoSe2/aug-SZ2_k16
#SBATCH --output=/scratch/hpc-prf-dyncrys/eprop2d1_Jan/02_Claude/0035_2d_vasp_compare/cases/2D_MoSe2/aug-SZ2_k16/slurm-%j.out
set -euo pipefail
module --force purge
module load DefaultModules toolchain/foss/2025b
R=/scratch/hpc-prf-dyncrys/eprop2d1_Jan/02_Claude/0035_2d_vasp_compare/runtime
export LD_LIBRARY_PATH=$R:${LD_LIBRARY_PATH:-}
export CP2K_DATA_DIR=/scratch/hpc-prf-dyncrys/eprop2d1_Jan/02_Claude/0035_2d_vasp_compare/source/data
export OMP_NUM_THREADS=8 OMP_PROC_BIND=close OMP_PLACES=cores OMP_STACKSIZE=256M OPENBLAS_NUM_THREADS=1
srun --ntasks=16 --ntasks-per-node=16 --cpus-per-task=8 --cpu-bind=cores --distribution=block:block $R/cp2k.psmp -i input.inp -o output.out > cp2k.stdout 2> cp2k.stderr
echo CP2K_JOB_FINISHED
