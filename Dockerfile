FROM ghcr.io/linuxserver/baseimage-kasmvnc:ubuntunoble
ADD https://github.com/cyanfish/naps2/releases/download/v7.4.2/naps2-7.4.2-linux-x64.deb /root/
ADD https://download.brother.com/welcome/dlf006893/linux-brprinter-installer-2.2.4-1.gz /root/
COPY expect.sh /root/
COPY /root /
RUN apt-get update && \
        apt-get install -y libgtkd-3-0 usbutils wget libusb-0.1-4 expect && \
        apt-get install -y /root/naps2-7.4.2-linux-x64.deb
RUN gzip -d /root/linux-brprinter-installer-2.2.4-1.gz && \
        chmod u+x /root/* && \
        /root/expect.sh
RUN rm /root/*