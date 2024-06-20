#FROM ghcr.io/linuxserver/baseimage-kasmvnc:alpine320
FROM ghcr.io/linuxserver/baseimage-kasmvnc:ubuntunoble
ADD https://github.com/cyanfish/naps2/releases/download/v7.4.2/naps2-7.4.2-linux-x64.deb /root/
RUN apt-get update && \
	apt-get install -y libgtkd-3-0 usbutils && \
	apt-get install -y /root/naps2-7.4.2-linux-x64.deb
COPY /root /
#CMD ["/usr/bin/sleep", "infinity"]