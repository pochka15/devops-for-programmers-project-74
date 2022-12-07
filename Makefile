build:
	docker-compose -f docker-compose.yml build app

start:
	docker-compose up -d

stop:
	docker-compose down

test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

magic: build start

# Docker hub

push-to-hub:
	docker-compose -f docker-compose.yml push app

ci: test push-to-hub