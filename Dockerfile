FROM ubuntu
MAINTAINER Feisal Lam-Lion <feisal@lamlion.com>
RUN apt-get update && apt-get -y install sudo && apt-get -y install apt-utils && apt-get -y install curl
RUN curl -s https://syncthing.net/release-key.txt | sudo apt-key add -
RUN echo "deb http://apt.syncthing.net/ syncthing release" | sudo tee /etc/apt/sources.list.d/syncthing.list
RUN apt-get -y install syncthing
