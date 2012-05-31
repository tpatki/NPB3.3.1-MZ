#!/bin/bash

#mkdir bin

make sp-mz CLASS=A NPROCS=16

make sp-mz CLASS=D NPROCS=4
make sp-mz CLASS=D NPROCS=8
make sp-mz CLASS=D NPROCS=16
make sp-mz CLASS=D NPROCS=32
make sp-mz CLASS=D NPROCS=64
make sp-mz CLASS=D NPROCS=128
make sp-mz CLASS=D NPROCS=256
make sp-mz CLASS=D NPROCS=512
make sp-mz CLASS=D NPROCS=1024
make sp-mz CLASS=D NPROCS=2048
make sp-mz CLASS=D NPROCS=4096
make sp-mz CLASS=D NPROCS=8192
