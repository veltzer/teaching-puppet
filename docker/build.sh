#!/bin/sh
docker build --network host --tag veltzer/puppet_server:latest --file Dockerfile.server .
# run server so that client build will be successful (it needs the signature)
docker run -it --network=host veltzer/puppet_server &
# wait a few seconds
sleep 5
# build the agent
docker build --network host --tag veltzer/puppet_agent:latest --file Dockerfile.agent .
# stop the server
# TBD
