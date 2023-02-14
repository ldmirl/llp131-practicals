If you've used docker before, to simplify the installation process, you can deploy a container with all dependencies pre-installed.

TL;DR [Docker Hub](https://hub.docker.com/r/lboromil/llp131-practical)

# Installation

## Install Docker

To install docker:

- Guide for [Windows](https://docs.docker.com/docker-for-windows/), [Linux](https://docs.docker.com/engine/installation/), or [macOS](https://docs.docker.com/docker-for-mac/)
- If you **have** a GPU and want to use it make sure you have [nvidia-docker](https://github.com/NVIDIA/nvidia-docker) and [NVidia Driver](https://www.nvidia.com/en-us/drivers/unix/) + [CUDA 11.x](https://developer.nvidia.com/cuda-downloads) installed.

Below are instructions for various approaches of installation.

## Native

```
docker run --rm -it -v /path/to/your/repo:/notebooks -p <local_port>:8888
```

## Manual

Build container

```
docker build -t llp131-practical --build-arg device=cpu .
```

or GPU

```
docker build -t llp131-practical --build-arg device=gpu .
```

Run it

```
docker run --rm --it -v <local_dir>:/notebooks -p <local_port>:8888 llp131-practical
```

or GPU

```
docker run --rm --it -v <local_dir>:/notebooks -p <local_port>:8888 --gpus all llp131-practical
```

**Examples**: `` docker run --rm -it -v `pwd`:/notebooks -p 8888:8888 llp131-practical ``

Copy the `token` from the console and run http://localhost:8888/?token=`<token>`
