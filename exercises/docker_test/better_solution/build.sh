#!/bin/sh
docker build --tag test_ubuntu:latest --file Dockerfile.ubuntu .
# docker build --tag test_centos:latest --file Dockerfile.centos .
