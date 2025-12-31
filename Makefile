# NewsTrack-CMS Makefile

.PHONY: build run stop clean restart status help

help:
	@echo "Available commands:"
	@echo "  make build   - Build the Docker containers"
	@echo "  make run     - Start the application in detached mode"
	@echo "  make stop    - Stop and remove the containers"
	@echo "  make clean   - Stop containers and remove volumes"
	@echo "  make restart - Restart the application"
	@echo "  make status  - Check the status of containers"

build:
	docker-compose build

run:
	docker-compose up -d

stop:
	docker-compose down

clean:
	docker-compose down -v

restart:
	docker-compose down
	docker-compose up -d

status:
	docker-compose ps
