FROM UBUNTU
apt-get update && apt-get install curl
# Add the release PGP keys:
RUN curl -s https://syncthing.net/release-key.txt | sudo apt-key add -
# Add the "release" channel to your APT sources:
RUN echo "deb http://apt.syncthing.net/ syncthing release" | sudo tee /etc/apt/sources.list.d/syncthing.list
apt-get install syncthing
