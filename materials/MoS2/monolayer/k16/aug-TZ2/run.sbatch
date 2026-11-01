#!/bin/bash
#SBATCH --job-name=tmdc_MoS2_05_TZVP_T2_k16
#SBATCH --account=hpc-prf-topodyn
#SBATCH --partition=normal
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=48
#SBATCH --cpus-per-task=4
#SBATCH --mem=700G
#SBATCH --time=01:00:00
#SBATCH --chdir=/scratch/hpc-prf-metdyn/eprop2d1_Jan/06_CP2K_development/tmdc_five_bases_k12_k16_20261020_v3/runs/MoS2_05_aug-TZVP_T2_k16
#SBATCH --output=/scratch/hpc-prf-metdyn/eprop2d1_Jan/06_CP2K_development/tmdc_five_bases_k12_k16_20261020_v3/runs/MoS2_05_aug-TZVP_T2_k16/slurm-%j.out
#SBATCH --error=/scratch/hpc-prf-metdyn/eprop2d1_Jan/06_CP2K_development/tmdc_five_bases_k12_k16_20261020_v3/runs/MoS2_05_aug-TZVP_T2_k16/slurm-%j.err
set -euo pipefail
unset HISTFILE LD_PRELOAD
module load chem CP2K/2026.2-foss-2025b-cpu
export LD_LIBRARY_PATH=/scratch/hpc-prf-metdyn/eprop2d1_Jan/06_CP2K_development/tmdc_timer_fix_20261020_v1/runtime:${LD_LIBRARY_PATH:-}
export TMPDIR=/scratch/hpc-prf-metdyn/eprop2d1_Jan/06_CP2K_development/tmdc_five_bases_k12_k16_20261020_v3/runs/MoS2_05_aug-TZVP_T2_k16/tmp XDG_CACHE_HOME=/scratch/hpc-prf-metdyn/eprop2d1_Jan/06_CP2K_development/tmdc_five_bases_k12_k16_20261020_v3/runs/MoS2_05_aug-TZVP_T2_k16/cache XDG_CONFIG_HOME=/scratch/hpc-prf-metdyn/eprop2d1_Jan/06_CP2K_development/tmdc_five_bases_k12_k16_20261020_v3/runs/MoS2_05_aug-TZVP_T2_k16/config XDG_DATA_HOME=/scratch/hpc-prf-metdyn/eprop2d1_Jan/06_CP2K_development/tmdc_five_bases_k12_k16_20261020_v3/runs/MoS2_05_aug-TZVP_T2_k16/share XDG_STATE_HOME=/scratch/hpc-prf-metdyn/eprop2d1_Jan/06_CP2K_development/tmdc_five_bases_k12_k16_20261020_v3/runs/MoS2_05_aug-TZVP_T2_k16/state
export OMP_NUM_THREADS=4 OMP_PROC_BIND=close OMP_PLACES=cores OMP_MAX_ACTIVE_LEVELS=1 OMP_STACKSIZE=256M OPENBLAS_NUM_THREADS=1 MKL_NUM_THREADS=1 OMPI_MCA_shmem=sysv
sha256sum --check preflight.sha256
ldd -r /scratch/hpc-prf-metdyn/eprop2d1_Jan/06_CP2K_development/tmdc_timer_fix_20261020_v1/runtime/cp2k.psmp > ldd.txt 2>&1
if grep -E 'not found|undefined symbol|libomp\.so|__kmpc' ldd.txt; then exit 1; fi
srun --input=none --nodes=1 --ntasks=48 --ntasks-per-node=48 --cpus-per-task=4 --cpu-bind=cores --distribution=block:block /scratch/hpc-prf-metdyn/eprop2d1_Jan/06_CP2K_development/tmdc_timer_fix_20261020_v1/runtime/cp2k.psmp -i input.inp -o output.out > cp2k.stdout 2> cp2k.stderr
echo CP2K_JOB_FINISHED
