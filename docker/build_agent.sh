#!/bin/sh
docker build --network host --tag veltzer/puppet_agent:latest --file Dockerfile.agent .
