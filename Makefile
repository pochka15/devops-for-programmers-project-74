compose-build:
	docker-compose -f docker-compose.yml build app

compose-up:
	docker-compose up -d

compose-down:
	docker-compose down

compose-test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

compose-ci: compose-build compose-test

push-to-hub:
	docker-compose -f docker-compose.yml push app

magic: build start