#!/bin/bash
#SBATCH -p gpu
#SBATCH -J T10
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --time=14-00
#SBATCH --output=job.out
#SBATCH --cpus-per-task=16
export OMP_NUM_THREADS=1

mpirun -np 16 ./namd2 ubq_ws_eq.conf > prot_log &

wait
