#!/bin/bash
#SBATCH --job-name=r66_CdSe_GTH_q20_q6_aug-TZ1
#SBATCH --account=hpc-prf-dyncrys
#SBATCH --partition=normal
#SBATCH --qos=cont
#SBATCH --nodes=4
#SBATCH --ntasks-per-node=16
#SBATCH --cpus-per-task=8
#SBATCH --exclusive
#SBATCH --mem=0
#SBATCH --time=12:00:00
#SBATCH --chdir=/scratch/hpc-prf-dyncrys/eprop2d1_Jan/02_Claude/0066_reference_rerun/cases/CdSe_GTH_q20_q6_aug-TZ1
#SBATCH --output=/scratch/hpc-prf-dyncrys/eprop2d1_Jan/02_Claude/0066_reference_rerun/cases/CdSe_GTH_q20_q6_aug-TZ1/slurm-%j.out
set -uo pipefail
module --force purge
module load DefaultModules toolchain/foss/2025b
export LD_LIBRARY_PATH=/scratch/hpc-prf-dyncrys/eprop2d1_Jan/02_Claude/0066_reference_rerun/build/runtime_ca4:${LD_LIBRARY_PATH:-}
export CP2K_DATA_DIR=/scratch/hpc-prf-dyncrys/eprop2d1_Jan/02_Claude/0066_reference_rerun/build/source/data
export OMP_NUM_THREADS=8 OMP_PROC_BIND=close OMP_PLACES=cores OMP_STACKSIZE=256M OPENBLAS_NUM_THREADS=1
srun --ntasks=64 --cpus-per-task=8 --cpu-bind=cores --distribution=block:block /scratch/hpc-prf-dyncrys/eprop2d1_Jan/02_Claude/0066_reference_rerun/build/runtime_ca4/cp2k.psmp -i input.inp -o output.out > cp2k.stdout 2> cp2k.stderr
echo CP2K_JOB_FINISHED
