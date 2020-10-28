#!/bin/sh
docker run -v $PWD:/usr/share/puppet/modules -it test /usr/share/puppet/modules/template/test.py
