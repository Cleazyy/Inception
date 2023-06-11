# Specifies the base image to be used to build the Docker image
FROM alpine:3.17

# Updates available and installed packages and installs MariaDB packages
RUN apk update && \
    apk add mariadb mariadb-client

# Copy and give permissions to the startup script
COPY ./tools/database.sh /home/database.sh
RUN chmod +x /home/database.sh

# Exposes port 3036
EXPOSE 3036

# Sets the working directory to home
WORKDIR /home

# Sets the entrypoint to sh script
ENTRYPOINT ["sh", "database.sh"]
