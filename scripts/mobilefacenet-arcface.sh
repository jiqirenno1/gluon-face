#!/usr/bin/env bash
python train_script.py \
       --dataset emore --batch-size 1760 --ctx 0,1,2,3,4,5,6,7 --dtype float32 -j 48 \
       --lr 0.35 --lr-mode cosine --lr-warmup-iters 5000 --wd 0.00004 --no-wd \
       -s 64 -m 0.5 -t lfw,agedb_30 -n mobilefacenet --niters 86000 --loss arcface \
       --loss-warmup-iters 35000 --hybrid --cat-interval 500