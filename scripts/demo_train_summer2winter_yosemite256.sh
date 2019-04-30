#!/bin/bash
rm datasets/summer2winter_yosemite256 -p
mkdir datasets/summer2winter_yosemite256 -p
wget https://people.eecs.berkeley.edu/~taesung_park/CycleGAN/datasets/summer2winter_yosemite.zip
unzip summer2winter_yosemite256/summer2winter_yosemite.zip -d datasets/summer2winter_yosemite256
python CUDA_VISIBLE_DEVICES=0 train.py --config configs/summer2winter_yosemite256_folder.yaml
