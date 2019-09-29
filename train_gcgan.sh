# python3 train.py --dataroot ./datasets/fisheye_gcgan --name cyclegan_with_fake2_no_idt --model cycle_gan --batchSize 4 --display_id 1 --which_model_netG resnet_6blocks --which_model_netD basic --identity 0
python3 train.py --dataroot ./datasets/MCindoor_fisheye --name gcgan_flow_with_fake2_att_data_doors --model gc_gan_cross --batchSize 8 --display_id 0 --which_direction BtoA --which_model_netG unet_128 --which_model_netD basic --geometry rot --nThreads 0 --lambda_smooth 10 --lambda_crossflow 10