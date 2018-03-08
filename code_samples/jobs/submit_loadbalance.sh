#!/bin/bash

#SBATCH --nodes=1
#SBATCH --ntasks=2
#SBATCH --time=00:02:00
#SBATCH --qos=debug
#SBATCH --partition=shas
#SBATCH --output=loadbalance_%j.out
#SBATCH --reservation=tutorial1  
 
module purge
 
module load intel
module load impi
module load python/2.7.11
module load loadbalance

mpirun lb cmd_file
