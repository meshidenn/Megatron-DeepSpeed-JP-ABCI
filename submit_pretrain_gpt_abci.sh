#!/bin/bash

#$ -l rt_G.small=1 # 1 node 1gpu
#$ -l h_rt=0:30:00 # 30 minutes
#$ -j y # Merge standard error output into standard output.
#$ -cwd

WORK_DIR={your working directory}

source /etc/profile.d/modules.sh
module load python/3.10/3.10.10 cuda/11.8/11.8.0 cudnn/8.6/8.6.0 nccl/2.16/2.16.2-1
source $WORK_DIR/megatron-deepspeed-abci/bin/activate
cd $WORK_DIR/Megatron-DeepSpeed-Ylab

sh examples/pretrain_gpt_abci.sh
