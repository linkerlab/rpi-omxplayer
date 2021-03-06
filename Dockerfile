FROM resin/rpi-raspbian

RUN apt-get update -y && apt-get -y install wget ca-certificates libpcre3 libfreetype6 fonts-freefont-ttf dbus libssl1.0.0 libsmbclient libssh-4 fbset libraspberrypi0 && wget https://archive.raspberrypi.org/debian/pool/main/o/omxplayer/omxplayer_0.3.6~git20160102~f544084_armhf.deb && dpkg -i  omxplayer_0.3.6~git20160102~f544084_armhf.deb

CMD ["omxplayer"]

