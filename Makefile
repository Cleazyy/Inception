all: up

up:
	@mkdir -p /home/fluchten/data/mariadb
	@mkdir -p /home/fluchten/data/wordpress
	@sudo docker-compose -f srcs/docker-compose.yml up -d

destroy:
	@sudo sh ./srcs/destroy.sh

re : destroy up
