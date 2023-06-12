# Specifies the base image to be used to build the Docker image
FROM alpine:3.17

# Updates available and installed packages and installs NGINX and OpenSSL packages
RUN apk update && \
	apk add nginx openssl && \
	mkdir -p /run/nginx

# Creates a directory for storing SSL certificates used by NGINX
RUN mkdir -p /etc/nginx/ssl

# Uses OpenSSL to generate a self-signed SSL certificate
	# req : generate a certificate request or a self-signed certificate
	# -x509 : uses the SHA-256 hash algorithm to sign the certificate
	# -days 356 : sets the certificate validity period to 365 days
	# -nodes : indicates that the private key will not be encrypted by a password
	# -newkey rsa:2048 : generates a new 2048-bit RSA key for the certificate
	# -subj : specifies the subject of the certificate
	# -keyout : indicates the path where the private key will be stored
	# -out : indicates the path where the certificate will be stored
RUN openssl req -x509 \
				-sha256 \
				-days 356 \
				-nodes \
				-newkey rsa:2048 \
				-subj "/CN=fluchten" \
				-keyout /etc/nginx/ssl/fluchten.key \
				-out /etc/nginx/ssl/fluchten.crt

# Copies the configuration file from the local directory to the Docker image directory
COPY ./conf/nginx.conf /etc/nginx/http.d/default.conf

# Exposes port 443 for HTTPS connections
EXPOSE 443

# Starts the container in daemon mode so that it runs in the background
CMD ["nginx", "-g", "daemon off;"]
