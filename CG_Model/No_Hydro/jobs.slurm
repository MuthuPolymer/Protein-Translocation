#!/bin/bash
#SBATCH -p short
#SBATCH -J Nir2
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --time=1-00
SBATCH --output=job.out

mpirun -np 1 ./lmp -in in.prot > STDOUT

rm lmp
