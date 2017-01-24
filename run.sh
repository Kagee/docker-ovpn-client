#! /bin/bash

DOCKER_NAME="hild1:ovpn-client"
PORTS="-p 5900:5900" # -p 4444:4444

sudo docker run --rm -t -i \
      ${PORTS} \
      --cap-add NET_ADMIN \
        -v $PWD/data:/data ${DOCKER_NAME} \
          /bin/bash

