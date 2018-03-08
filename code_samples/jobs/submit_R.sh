#!/bin/bash
#SBATCH --nodes=1				# Number of requested nodes
#SBATCH --ntasks=1        			# Number of requested nodes
#SBATCH --time=0:01:00				# Max walltime
#SBATCH --qos=debug				# Specify QOS
#SBATCH --partition=shas			# Specify Summit haswell nodes
#SBATCH --output=R_code_%j.out			# Output file name
#SBATCH --reservation=tutorial1                 # Reservation (only valid during workshop)


# Written by:	Shelley Knuth, 24 February 2014
# Updated by:   Andrew Monaghan, 08 March 2018
# Purpose: 	To demonstrate how to submit a serial R job

# purge all existing modules
module purge

# Load the R module
module load R

# Run R Script
Rscript progs/R_program.R
