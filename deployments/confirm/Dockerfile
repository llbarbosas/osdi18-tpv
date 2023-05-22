FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractive

# Install basic dependencies
RUN apt-get update && \
    apt-get install -y \
    git \
    npm \
    nodejs-legacy \
    tree \
    vim \
    wget \
    curl \
    chromium-chromedriver \
    libgl1-mesa-glx

# Specific CONFIRM dependencies
RUN apt-get install -y \
    libgl1-mesa-glx \
    && \
    rm -rf /var/lib/apt/lists/*

# Install anaconda
RUN mkdir conda-src && \
    cd conda-src && \
    curl -O https://repo.anaconda.com/archive/Anaconda2-5.2.0-Linux-x86_64.sh && \
    bash Anaconda2-5.2.0-Linux-x86_64.sh -b -p /opt/anaconda && \
    echo 'export PATH="/opt/anaconda/bin:$PATH"' >> ~/.bashrc

ENV PATH /opt/anaconda/bin:$PATH
ENV PATH /opt/conda/envs/env/bin:$PATH

WORKDIR /app

COPY ./environment.yml .
RUN conda env create -f environment.yml

COPY ./docker-entrypoint.sh .

ENTRYPOINT ["./docker-entrypoint.sh"]
