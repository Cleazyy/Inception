all: up

prepare:
	@mkdir -p /home/fluchten/data/mariadb
	@mkdir -p /home/fluchten/data/wordpress

build:
	@sudo docker-compose -f srcs/docker-compose.yml build

up: prepare build
	@sudo docker-compose -f srcs/docker-compose.yml up -d

destroy:
	@sudo sh ./srcs/destroy.sh

.PHONY: all prepare build up destroy
