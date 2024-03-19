export GPUS="0," # change the cfg.test_model

for name in 377 386 387 393 394
do  
    #python train_net.py --cfg_file configs/inb/inb_${name}.yaml exp_name inb_${name}_300y gpus ${GPUS} silent False
    python run.py --type evaluate --cfg_file configs/inb/inb_${name}.yaml exp_name inb_${name}_300y gpus ${GPUS} >> withmask.log
done