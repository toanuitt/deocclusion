#!/bin/bash
CUDA_VISIBLE_DEVICES=0 \
python /kaggle/working/deocclusion/tools/test.py \
    --config /kaggle/working/deocclusion/experiments/COCOA/pcnet_m/config.yaml \
    --load-model "/kaggle/input/cocoa1/COCOA_pcnet_m.pth.tar"\
    --order-method "ours" \
    --amodal-method "ours" \
    --order-th 0.1 \
    --amodal-th 0.2 \
    --annotation "/kaggle/input/final-dataset/annotations/test.json" \
    --image-root /kaggle/input/final-dataset/test\
    --test-num -1 \
    --output /kaggle/working/amodal_results/amodalcomp_val_ours.json
