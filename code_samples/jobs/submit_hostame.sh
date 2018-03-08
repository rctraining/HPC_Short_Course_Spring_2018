#!/bin/bash
#SBATCH --nodes=1						# Number of requested nodes
#SBATCH --ntasks=1     					        # Number of requested nodes
#SBATCH --time=0:01:00						# Max wall time
#SBATCH --qos=debug						# Specify QOS
#SBATCH --partition=shas					# Specify Summit haswell nodes
#SBATCH --output=hostname_%j.out		          	# Rename standard output file
#SBATCH --reservation=tutorial1                                 # Reservation (only valid during workshop)


# Written by:	Shelley Knuth, 15 July 2016
# Updated by:	Andy Monaghan, 8 March 2018
# Purpose:	To demonstrate how to run a batch job on RC resources

# purge all existing modules
module purge
 
hostname
