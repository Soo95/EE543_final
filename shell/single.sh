#!/usr/bin/env bash
sudo NV_GPU=0 nvidia-docker run \
 -it \
 --rm \
 -v "/home/hslee1/ee543:/tmp/ee543" \
 -v "/home/Alexandrite/hslee:/workspace" \
 --name "debug" \
 --shm-size "32G" \
 hslee:pytorch-v1.3 \
 /bin/bash -c 'cd /tmp/ee543 &&
  python -m single.Train --config_path=/tmp/ee543/config/single.yaml'