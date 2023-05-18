#!/bin/bash

#$ -l rt_F=1
#$ -l h_rt=1:00:00
#$ -j y
#$ -cwd

WORK_DIR={your-working-dir}

source /etc/profile.d/modules.sh
module load python/3.10/3.10.10 cuda/11.8/11.8.0 cudnn/8.6/8.6.0 nccl/2.16/2.16.2-1
cd $WORK_DIR
source megatron-deepspeed-abci/bin/activate

sh examples/pretrain_gpt_abci.sh
