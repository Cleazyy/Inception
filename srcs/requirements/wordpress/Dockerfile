# Specifies the base image to be used to build the Docker image
FROM debian:buster

# Updates available and installed packages and installs ???????? packages
RUN apt-get -y update && \
	apt-get -y upgrade && \
	apt-get -y install \
		wget \
		mariadb-server \
		mariadb-client \
		php-cgi \
		php-common \
		php-fpm \
		php-pear \
		php-mbstring \
		php-zip \
		php-net-socket \
		php-gd \
		php-xml-util \
		php-gettext \
		php-mysql \
		php-bcmath

# Installation of wordpress
WORKDIR /var/www
RUN wget https://wordpress.org/wordpress-6.1.tar.gz && \
	tar -xzvf wordpress-6.1.tar.gz && \
	rm wordpress-6.1.tar.gz

# Exposes port 9000
EXPOSE 9000
