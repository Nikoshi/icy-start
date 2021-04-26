
.PHONY: install all

all: install

install:
	docker-compose pull
	docker-compose up -d --build
