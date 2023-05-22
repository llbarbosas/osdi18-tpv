FROM debian:bullseye

RUN apt-get update && apt-get install -y --no-install-recommends \
    sudo \
    fdisk \
    iproute2 \
    lshw \
    ethtool \
    uuid-runtime \
    git \
    make \
    curl \
    python3 \
    gcc \
    && rm -rf /var/lib/apt/lists/*

RUN alias python=python3

RUN echo "mynode" > /var/emulab/boot/nodeid
RUN echo "1ae79050-c19b-4392-8745-cfd8a0f9faee" > /var/emulab/boot/nodeuuid

WORKDIR /app

CMD [ "python3", "run_benchmarks_short.py" ]