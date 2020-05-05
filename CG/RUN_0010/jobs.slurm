#!/bin/bash
#SBATCH -p short
#SBATCH -J Nir10
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --time=1-00
SBATCH --output=job.out

./lmp < in.prot > STDOUT

rm lmp
