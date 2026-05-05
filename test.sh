#!/bin/bash
python data_creation.py

python test.py --train_data_dir datasets/person/ --output_dir exps/exp_person --num_test_samples 10 --prompt "a doctor"

python test.py \
  --train_data_dir datasets/person \
  --output_dir exps/exp_person \
  --evaluation_type winobias \
  --num_test_samples 50 \
  --template_key 0 \
  --concept woman man \
  --clip_attributes "a woman" "a man"