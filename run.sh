#!/bin/bash
mydir=$(pwd)
mydir=${mydir##*/}

if [[ -z "$tagname" ]]; then
	tagname="local/$mydir"
fi

docker build . -t $tagname && \
docker run --privileged \
  --device /dev/bus --device /dev/usb -v /var/run/dbus:/var/run/dbus
  -p 3000:3000 \
  -p 3003:3001 \
  -d \
  $tagname