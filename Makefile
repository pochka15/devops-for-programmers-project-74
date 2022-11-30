setup:
	docker-compose build

start:
	docker-compose up -d

stop:
	docker-compose down

test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

magic: setup start