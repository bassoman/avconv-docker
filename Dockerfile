# Ubuntu Base (https://registry.hub.docker.com/_/ubuntu/)
FROM ubuntu:15.10
MAINTAINER Marcus Collier "dev@mjcollier.id.au"

# Install AVConv and mkv Tools
RUN apt-get update && \ 
	apt-get install -y libav-tools \
	mkvtoolnix \
	imagemagick --fix-missing \
	&& apt-get clean

# Set up local user to run as
RUN useradd -u 1000 -ms /bin/bash docker
USER docker
ENV HOME /home/docker

CMD ["/usr/bin"]
