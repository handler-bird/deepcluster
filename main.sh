# Copyright (c) 2017-present, Facebook, Inc.
# All rights reserved.
#
# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.
#
#!/bin/bash

DIR="${HOME}/../content/deepcluster/data/cifar-10/train"
ARCH="alexnet"
LR=0.05
WD=-5
K=100
WORKERS=2
EXP="${HOME}/deepcluster_exp/main"
PYTHON="${HOME}/../usr/bin/python3"

mkdir -p ${EXP}

CUDA_VISIBLE_DEVICES=0 ${PYTHON} main.py ${DIR} --exp ${EXP} --arch ${ARCH} \
  --lr ${LR} --wd ${WD} --k ${K} --sobel --verbose --workers ${WORKERS}
