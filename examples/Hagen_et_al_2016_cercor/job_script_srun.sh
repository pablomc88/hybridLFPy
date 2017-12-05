#!/bin/bash
################################################################################
#SBATCH --job-name cellsim16pops_modified_regular_input
#SBATCH --time 10:00:00
#SBATCH -o cellsim16pops_modified_regular_input_o3.txt
#SBATCH -e cellsim16pops_modified_regular_input_e3.txt
#SBATCH --mem-per-cpu=2000MB
#SBATCH --ntasks 80
#SBATCH --mail-type=ALL
################################################################################
unset DISPLAY # slurm appear to create a problem with too many displays
srun --mpi=pmi2 python cellsim16pops_modified_regular_input.py