#
# This is the custom docker image used in the sagemaker container
#
ARG CPU_OR_GPU
ARG AWS_REGION
FROM 520713654638.dkr.ecr.$AWS_REGION.amazonaws.com/sagemaker-tensorflow-scriptmode:1.12.0-$CPU_OR_GPU-py3

RUN apt-get update && apt-get install -y --no-install-recommends \
        build-essential \
        jq \
        libav-tools \
        libjpeg-dev \
        libxrender1 \
        python3.6-dev \
        python3-opengl \
        wget \
        xvfb && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Install Redis.
RUN \
    cd /tmp && \
    wget http://download.redis.io/redis-stable.tar.gz && \
    tar xvzf redis-stable.tar.gz && \
    cd redis-stable && \
    make && \
    make install
    
# Bootstrap the PIP installs to make it faster to re-build the container image on code changes.
RUN pip install \
    retrying \
    eventlet \
    annoy==1.8.3 \
    numpy==1.14.5 \
    PyOpenGL==3.1.0 \
    scikit-image==0.13.0 \
    gym==0.12.0 \
    futures==3.1.1 \
    boto3==1.9.23 \
    kubernetes==7.0.0 \
    minio==4.0.5 \
    pandas==0.22.0 \
    Pillow==4.3.0 \
    matplotlib==2.0.2 \
    pygame==1.9.3 \
    PyYAML==3.13 \
    redis==3.2.1 \
    rospkg==1.1.7 \
    scipy==1.2.2 \
    tensorflow==1.11 \
    pyasn1==0.4.6

#Install rl coach
RUN pip install rl-coach-slim==0.11.1

RUN pip install --no-cache-dir --upgrade sagemaker-containers


# Patch intel coach so that discrete distributions can not produce nan's
COPY src/lib/ppo_head.py /usr/local/lib/python3.6/dist-packages/rl_coach/architectures/tensorflow_components/heads/ppo_head.py

# Copy in all the code and make it available on the path
COPY src/lib/redis.conf /etc/redis/redis.conf
ENV PYTHONPATH /opt/amazon/:$PYTHONPATH
ENV PATH /opt/ml/code/:$PATH
WORKDIR /opt/ml/code

ENV NODE_TYPE SAGEMAKER_TRAINING_WORKER

ENV PYTHONUNBUFFERED 1
