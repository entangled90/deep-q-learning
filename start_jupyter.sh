#!/bin/bash
if [ -n "$1" ]; then
        folder=$1
else    
        folder=`pwd`
fi

echo "opening notebook with folder in $folder"
  
sudo docker run --gpus all -it -p 8888:8888 -v $(realpath $folder):/tf/notebooks tensorflow/tensorflow:latest-gpu-jupyter