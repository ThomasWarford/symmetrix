#!/bin/bash -l
#SBATCH -o ./out.%j
#SBATCH -e ./err.%j
#SBATCH -D ./
#SBATCH -J vasp
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=72
#SBATCH --time=24:00:00

module load mkl
module load gcc/15
export LD_LIBRARY_PATH=/mpcdf/soft/SLE_15/packages/x86_64/intel_oneapi/2025.3/mkl/latest/lib:$LD_LIBRARY_PATH

source ~/.bashrc
mamba activate mace


symmetrix_extract_mace -m ~/.cache/mace/macemh0model --head omat_pbe
