export GPUS="0," # change to your gpu id

for name in 377 #386 387 392 393 394
do
    python train_net.py --cfg_file configs/inb/inb_${name}.yaml exp_name inb_novel_${name} gpus ${GPUS} silent False
    python run.py --type evaluate --cfg_file configs/inb/inb_${name}.yaml exp_name inb_novel_${name} gpus ${GPUS}
done