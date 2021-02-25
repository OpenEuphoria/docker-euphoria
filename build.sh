#!/bin/bash

if [ ! -f euphoria-4.1.0-Linux-x64-57179171dbed.tar.gz ]; then
	wget "https://downloads.sourceforge.net/project/rapideuphoria/Euphoria/4.1.0-beta2/euphoria-4.1.0-Linux-x64-57179171dbed.tar.gz"
fi

if [ ! -f euphoria-mvc-1.13.0.tar.gz ]; then
	wget "https://github.com/OpenEuphoria/euphoria-mvc/archive/v1.13.0.tar.gz" -O euphoria-mvc-1.13.0.tar.gz
fi

docker build --no-cache -f Dockerfile.euphoria -t openeuphoria/euphoria:latest -t openeuphoria/euphoria:4.1.0 .
docker build --no-cache -f Dockerfile.euphoria-mvc -t openeuphoria/euphoria-mvc:latest -t openeuphoria/euphoria-mvc:1.13.0 .
docker build --no-cache -f Dockerfile.euphoria-demo -t openeuphoria/euphoria-demo:latest .
