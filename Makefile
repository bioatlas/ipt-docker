#!make

all: build up

build:
	docker build -t bioatlas/ipt bin

up:
	docker-compose up -d
	./wait-for-http-OK.sh http://ipt.bioatlas.se
	firefox http://ipt.bioatlas.se &

down:
	docker-compose down	

