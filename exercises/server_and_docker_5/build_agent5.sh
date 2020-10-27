#!/bin/sh
docker build --network host --tag puppet_agent5:latest --file Dockerfile.agent5 .
