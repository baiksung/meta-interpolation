#!/bin/bash

CUDA_VISIBLE_DEVICES=6 python main.py \
    --exp_name sepconv-i3-l2f-alfa-init-5e-4 \
    --model sepconv \
    --batch_size 3 \
    --val_batch_size 1 \
    --loss 1*L1 \
    --optimizer Adamax \
    --inner_lr 1e-5 \
    --outer_lr 1e-5 \
    --total_iter_per_epoch 5000 \
    --max_epoch 50 \
    --number_of_training_steps_per_iter 1 \
    --number_of_evaluation_steps_per_iter 1 \
    --log_iter 10 \
    --attenuate \
    --alfa
#    --resume
#    --metasgd \
#    --mode val \
#    --resume
#    --learnable_per_layer_per_step_inner_loop_learning_rate
#    --pretrained_model pretrained_models/meta_sepconv.pth \
#    --resume \
#    --second_order
#    --first_order_to_second_order_epoch -1
#    --use_multi_step_loss_optimization
#    --multi_step_loss_num_epochs 1
