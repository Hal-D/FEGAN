python3 \
train.py \
--dataroot ./datasets/lsun \
--name 10072344 \
--model gc_gan_cross \
--batchSize 4 \
--save_epoch 10 \
--niter 100 \
--which_direction BtoA \
--tensorboard \
--nThreads 0 \
--which_model_netG unet_128 \
--upsample_flow 2 \
--use_att \
--geometry rot \
--identity 0 \
--GD_share \
--which_model_netD Fusion \
--lambda_gc 1 \
--lambda_smooth 1 \
--lambda_crossflow 2 \
--lambda_radial 0.1 \
--lambda_rot 0 \
