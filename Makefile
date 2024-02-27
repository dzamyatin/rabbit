include .env

export $(shell sed 's/=.*//' .env)

up:
	docker-compose up -d

down:
	docker-compose down

rabbit:
	docker exec -ti $(RABBIT_CONTAINER_NAME) sh

lrabbit:
	docker logs -f $(RABBIT_CONTAINER_NAME)
build:
	docker-compose build
