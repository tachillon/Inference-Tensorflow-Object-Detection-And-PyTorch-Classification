FROM ubuntu:18.04

# See http://bugs.python.org/issue19846
ENV LANG C.UTF-8

ENV DEBIAN_FRONTEND noninteractive
RUN DEBIAN_FRONTEND=noninteractive  apt-get update && apt-get install -y --no-install-recommends \
            build-essential  \
            python3          \
            python3-pip      \  
            python3-opencv     
ENV DEBIAN_FRONTEND noninteractive

RUN pip3 install --no-cache-dir \
    pip                         \ 
    setuptools

RUN python3 -m pip install --upgrade pip

RUN pip3 --no-cache-dir install --upgrade \    
    'tensorflow==1.13.1'   \
    'numpy==1.17.3'        \
    opencv-python          \
    'pillow==5.00'         \
    https://download.pytorch.org/whl/cpu/torch-1.1.0-cp36-cp36m-linux_x86_64.whl \
    https://download.pytorch.org/whl/cpu/torchvision-0.3.0-cp36-cp36m-linux_x86_64.whl

RUN apt-get autoremove &&\          
    apt-get clean      &&\                
    rm -rf /var/lib/apt/lists/*

ENV TORCH_HOME /tmp
