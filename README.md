# Sapphire Docker Image

## Option 1: Build the Docker Image Yourself

docker build -t sapphirepp:2.0 .

This will create a local Docker image named sapphirepp:2.0 using the Dockerfile in your current directory.

## Option 2: Pull Pre-built Image from Docker Hub

If you don't want to build the image manually, you can pull the ready-to-use image:

docker pull ritanjos/sapphire-docker 

## Running Sapphire

To run Sapphire in an interactive container:

docker run --rm -ti -v $(pwd):/results sapphirepp:2.0 bash

This mounts your current directory into the container as /results. Once inside the container, navigate to /results:

cd /results

Then run Sapphire with:

/app/build/sapphirepp

This will execute a test run using any input files in your current directory.


