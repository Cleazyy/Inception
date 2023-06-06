all: up

install:
	@sudo apt-get -y update
	@sudo apt-get -y upgrade
	@sudo apt-get -y install docker.io
	@sudo apt-get -y install docker-compose

up:
	@mkdir -p /home/fluchten/data/wp
	@mkdir -p /home/fluchten/data/db
	@sudo docker-compose -f srcs/docker-compose.yml up -d

destroy:
	@sudo sh destroy.sh
