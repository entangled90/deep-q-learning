#!/bin/bash
if [ -n "$1" ]; then
        folder=$1
else    
        folder=`pwd`
fi

echo "opening notebook with folder in $folder"
  
docker run --gpus all -it -p 8888:8888 -v $(realpath $folder):/tf/notebooks tensorflow-jupyter 

# command to start in docker:
# xvfb-run -s "-screen 0 1400x900x24" jupyter notebook --ip 0.0.0.0 --allow-root 
