# Specifies the base image to be used to build the Docker image
FROM alpine:3.17

# Installs the required packages
RUN apk update && apk upgrade && \
    apk add php81 php81-fpm php81-mysqli php81-phar php81-json php81-mbstring mariadb-client

# Copy and give permissions to the startup script
COPY ./tools/wordpress.sh /home/wordpress.sh
RUN chmod +x /home/wordpress.sh

# Exposes port 9000
EXPOSE 9000

# Sets the working directory to home
WORKDIR /home

# Sets the entrypoint to sh script
ENTRYPOINT ["sh", "wordpress.sh"]
