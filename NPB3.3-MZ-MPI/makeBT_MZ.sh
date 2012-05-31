#!/bin/bash

#mkdir bin

make bt-mz CLASS=A NPROCS=16

make bt-mz CLASS=D NPROCS=4
make bt-mz CLASS=D NPROCS=8
make bt-mz CLASS=D NPROCS=16
make bt-mz CLASS=D NPROCS=32
make bt-mz CLASS=D NPROCS=64
make bt-mz CLASS=D NPROCS=128
make bt-mz CLASS=D NPROCS=256
make bt-mz CLASS=D NPROCS=512
make bt-mz CLASS=D NPROCS=1024
make bt-mz CLASS=D NPROCS=2048
make bt-mz CLASS=D NPROCS=4096
make bt-mz CLASS=D NPROCS=8192
