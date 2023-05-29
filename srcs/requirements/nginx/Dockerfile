FROM debian:buster

RUN apt-get -y update && \
	apt-get -y upgrade && \
	apt-get -y install nginx openssl

COPY conf/my-nginx.conf /etc/nginx/sites-enabled/default

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
