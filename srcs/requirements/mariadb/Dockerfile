# Specifies the base image to be used to build the Docker image
FROM debian:buster

# Updates available and installed packages and installs MariaDB packages
RUN apt-get -y update && \
	apt-get -y upgrade && \
	apt-get -y install mariadb-server

# Copie the custom MySQL config file
COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

# Copie the startup script
COPY tools/start.sh /

# Exposes port 3036
EXPOSE 3036

# Sets the entrypoint to start.sh script
ENTRYPOINT ["sh", "start.sh"]
