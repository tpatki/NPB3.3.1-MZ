#!/bin/bash
# $1 = number of nodes desired
# $2 = number of CPU cores desired
set -x

export BMARK_STRING=cg.D.$2

name=`date +%Y_%m_%d_%H_%M_%S_%N`
mkdir $name
cd $name
touch out.dat
env > env
echo $name >> info
uname -a >> info
srun --nodes=1 --ntasks=1 -ppbatch cat /proc/cpuinfo | grep MHz >> info

#Add the hostnames to a file too -- TP -- May 18 2012
srun --nodes=$1 --ntasks=$1 -o host_info hostname 
####

echo 'cores: '$2 >> info
echo 'nodes: '$1 >> info
#Use auto-affinity instead of cpu_bind=sockets
#Also, if the second socket is not in use, then set the other socket at a lower frequency

#if [ $2 -le 8 ]
#then

#	sh ~/local/src/power/setcpufreq.sh 1200000 8 15
#	sh ../../../../../setcpufreq.sh 1200000 8 15
#fi

srun --nodes=$1 --ntasks=$2 -ppbatch -e spmz.err -o out.dat --auto-affinity=start=0,verbose,cpt=1 ../sp-mzCL.sh $2

#Reset all cores back to original freq which is 2600000 after the run
#sh ../../../../../setcpufreq.sh 2600000 0 15
#sh ~/local/src/power/setcpufreq.sh 2600000 0 15
