FROM ubuntu:22.04
ADD . /app
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    git \
    wget \
    python3 \
    python3-pip \
    libopenmpi-dev \
    libgsl-dev \
    libboost-all-dev \
    libhdf5-openmpi-dev \
    liblapack-dev \
    libblas-dev \
    libgmp-dev \
    libmpfr-dev \
    libmuparser-dev \
    libtbb-dev \
    libassimp-dev \
    curl

RUN useradd -m -s /bin/bash sapphire
WORKDIR /app/scripts
RUN chown -R sapphire /app
RUN chgrp -R sapphire /app
USER sapphire
RUN ./install-dealii.sh
ENV DEAL_II_DIR="/home/sapphire/.local/lib/dealii"
WORKDIR /app
RUN cmake -S . -B build -DCMAKE_BUILD_TYPE=Release -DEXAMPLES=ON
RUN make --directory=build
