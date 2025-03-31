# Sapphire Docker Image

## Run Sapphire

The container will have your current directory mounted as `/results`.

    docker run --rm -ti -v $(pwd):/results sapphirepp:2.0 bash

Once inside the container, move to `/results` and execute

    /app/build/sapphirepp

for a test run.
