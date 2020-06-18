#!/bin/bash

#
# This is an example on how to start cli for a node.
#

# Start block-producing node
docker run -it --rm \
    --network=host \
    -e PUID=$(id -u) \
    -e PGID=$(id -u) \
    -e NODE_PORT="3000" \
    -e NODE_NAME="block-producing" \
    -e NODE_TOPOLOGY="127.0.0.1:3001/1" \
    -e NODE_RELAY="False" \
    -e CARDANO_NETWORK="pioneer" \
    -e EKG_PORT="12788" \
    -e PROMETHEUS_PORT="12798" \
    -e RESOLVE_HOSTNAMES="True" \
    -e REPLACE_EXISTING_CONFIG="False" \
    -e HOST_ADDR="127.0.0.1" \
    -v $PWD/active_config/pioneer/block-producing:/config/ \
    arrakis/cardano-node:1.13.0 --cli
