#!/bin/bash
#SBATCH --nodes=1				# Number of requested nodes
#SBATCH --ntasks=1			        # Number of requested tasks
#SBATCH --time=0:01:00				# Max walltime
#SBATCH --qos=debug              		# Specify QOS
#SBATCH --partition=shas			# Specify Summit haswell nodes
#SBATCH --output=sleep_%j.out			# Rename standard output file
#SBATCH --job-name=sleep			# Job submission name
#SBATCH --mail-type=end				# Email you when the job ends 
###SBATCH --mail-user=<user>@colorado.edu	# Email address to send to	
#SBATCH --reservation=tutorial1                 # Reservation (only valid during workshop)


# Written by:   Shelley Knuth, 15 July 2016
# Updated:      Andy Monaghan, 8 March 2018
# Purpose:      To demonstrate how to run a batch job on RC resources


# purge all existing modules
module purge

echo "I am" `whoami`
echo "Running on host" `hostname`
echo "Starting Sleep"
sleep 30
echo "Ending Sleep. Exiting Job!"
