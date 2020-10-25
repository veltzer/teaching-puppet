#!/bin/sh
# docker run --detach veltzer/puppet_agent
docker run -it --network=host veltzer/puppet_agent
