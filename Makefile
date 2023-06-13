all: up

prepare:
	@mkdir -p /home/fluchten/data/mariadb
	@mkdir -p /home/fluchten/data/wordpress

up: prepare build
	@sudo docker-compose -f srcs/docker-compose.yml up -d

build:
	@sudo docker-compose -f srcs/docker-compose.yml build

down:
	@sudo docker-compose -f srcs/docker-compose.yml down

destroy:
	@sudo sh ./srcs/destroy.sh

.PHONY: all prepare up build down destroy
