# Specifies the base image to be used to build the Docker image
FROM debian:buster

# Updates available and installed packages and installs MariaDB packages
RUN apt-get -y update && \
	apt-get -y upgrade && \
	apt-get -y install mariadb-server

# Exposes port 3036
EXPOSE 3036
