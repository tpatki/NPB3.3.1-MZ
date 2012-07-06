#!/bin/bash

#mkdir bin

make sp-mz CLASS=A NPROCS=16

make sp-mz CLASS=E NPROCS=4
make sp-mz CLASS=E NPROCS=8
make sp-mz CLASS=E NPROCS=16
make sp-mz CLASS=E NPROCS=32
make sp-mz CLASS=E NPROCS=64
make sp-mz CLASS=E NPROCS=128
make sp-mz CLASS=E NPROCS=256
make sp-mz CLASS=E NPROCS=512
make sp-mz CLASS=E NPROCS=1024
make sp-mz CLASS=E NPROCS=2048
make sp-mz CLASS=E NPROCS=4096
make sp-mz CLASS=E NPROCS=8192
