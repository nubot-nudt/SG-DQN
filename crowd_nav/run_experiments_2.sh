#!/bin/bash

# Script to reproduce results
for ((i=0;i<3;i+=1))
do 
	python train.py \
	--policy model_predictive_rl \
	--output_dir data/0605/5human/tsrl_origin/$i \
	--config configs/icra_benchmark/ts_separate.py \
	--overwrite \
	--randomseed $i

	python train.py \
	--policy model_predictive_rl \
	--output_dir data/0605/5human/mprl_origin/$i  \
	--config configs/icra_benchmark/mp_separate.py \
	--overwrite \
	--randomseed $i
done
