# kasm-naps2
Docker kasm naps2


docker run --security-opt seccomp=unconfined \
  --name kasm-naps2 \
  --privileged \
  --device /dev/bus \
  --device /dev/usb \
  -v /dev:/dev \
  -p 3003:3000 \
  -p 3001:3001 \
  -e PUID=0 \
  -e PGID=0 \
  -d kasm-naps2