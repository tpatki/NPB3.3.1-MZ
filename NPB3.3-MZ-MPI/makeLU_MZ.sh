#!/bin/bash

#mkdir bin

make lu-mz CLASS=A NPROCS=16

make lu-mz CLASS=D NPROCS=4
make lu-mz CLASS=D NPROCS=8
make lu-mz CLASS=D NPROCS=16
make lu-mz CLASS=D NPROCS=32
make lu-mz CLASS=D NPROCS=64
make lu-mz CLASS=D NPROCS=128
make lu-mz CLASS=D NPROCS=256
make lu-mz CLASS=D NPROCS=512
make lu-mz CLASS=D NPROCS=1024
make lu-mz CLASS=D NPROCS=2048
make lu-mz CLASS=D NPROCS=4096
make lu-mz CLASS=D NPROCS=8192
