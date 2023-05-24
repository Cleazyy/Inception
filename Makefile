all: up

up:
	sudo docker-compose -f srcs/docker-compose.yml up -d