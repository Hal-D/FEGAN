python3 train.py --dataroot ./datasets/wireframes_fisheye --name 10031926 --model gc_gan_cross --batchSize 8 --display_id 0 --which_direction BtoA --which_model_netG unet_128 --which_model_netD n_layers --n_layers_D 3 --geometry rot --nThreads 0 --lambda_smooth 1 --lambda_crossflow 1 --lambda_selfflow 0.1 --lambda_gc 0 --lambda_rot 0 --no_dropout --identity 0 --save_epoch 10 --GD_share --tensorboard --upsample_flow 2