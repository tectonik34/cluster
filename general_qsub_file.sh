#!/bin/bash
# generic submission file to configure for SGE
# Beginning of SGE Options (all options begin with '#$')
# Define shell to use for this job (/bin/sh here)
#$ -S /bin/sh
# Job name
#$ -N my_sge_test
# Using current working directory (otherwise, you will have to use '#$ wd /path/to/run')
#$ -cwd
# job time limits (h_rt is required [s_rt == software time limit / h_rt == hardware time limit])
#$ -l s_rt=11:55:00
#$ -l h_rt=12:00:00
# choose to run on a specific queue
# (qconf -sql (to list queues) qconf -sq queue_name (to print informations on this queue))
#$ -q cemeb.q
# Get a mail when the job begins, ends or is suspended
#$ -m ebs
#$ -M me@mail.com
# Redirects the standard output to the named file.
#$ -o my_sge_test.out
##$ -e my_sge_test.err
# merge standard and error outputs
#$ -j y
# choose a parallel environment and run on 60 slots (use $PE_HOSTFILE)
#$ -pe mpi 10
# Export all my environment variables into job runtime context
#$ -V
# other interesting options : -t n (for n tasks array), -sync y (to wait until job is finished),
# -v PATH (to export only PATH variable))
# ...
## for more informations "man qsub"

#you could export/change some environment variables before
export LD_LIBRARY_PATH=/usr/lib64/:$LD_LIBRARY_PATH

/path/to/my/executable --an_option /path/to/other/file
