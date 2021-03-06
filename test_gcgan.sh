if [[ $# -lt 3 ]] ; then
    echo 'bash test_gcgan.sh [dataset_path] [name] [which_epoch]'
    exit 0
fi
python3 test.py \
 --dataroot $1 \
 --name $2 \
 --model gc_gan_cross \
 --no_dropout \
 --which_model_netG unet_128 \
 --batchSize 1 \
 --which_direction BtoA \
 --geometry rot \
 --which_epoch $3 \
 --loadSize 256 \
 --fineSize 256 \
 --use_att