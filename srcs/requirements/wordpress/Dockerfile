# Specifies the base image to be used to build the Docker image
FROM alpine:3.16

# Install required packages
RUN apk update && apk upgrade && \
    apk add php8 php8-fpm php8-mysqli php8-phar php8-json php8-mbstring mariadb-client

# Copy and give permissions to the startup script
COPY ./tools/wordpress.sh /home/wordpress.sh
RUN chmod +x /home/wordpress.sh

# Exposes port 9000
EXPOSE 9000

# Sets the working directory to home
WORKDIR /home

# Sets the entrypoint to sh script
ENTRYPOINT ["sh", "wordpress.sh"]
