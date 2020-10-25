#!/bin/sh
docker build --network host --tag veltzer/puppet_server:latest --file Dockerfile.server .
