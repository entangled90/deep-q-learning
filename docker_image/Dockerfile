# build with `sudo docker build -t tensorflow-jupyter .  `
FROM tensorflow/tensorflow:latest-gpu-jupyter

RUN pip install --upgrade ipython ipykernel gym keras tqdm

RUN apt-get install -y xvfb python-opengl ffmpeg

CMD xvfb-run -s "-screen 0 1400x900x24" jupyter notebook --ip 0.0.0.0 --allow-root