compose-build:
	docker-compose -f docker-compose.yml build app

compose-test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit

compose-up:
	docker-compose up -d

compose-down:
	docker-compose down

compose-ci: compose-build compose-test

push-to-hub:
	docker-compose -f docker-compose.yml push app

magic: compose-build compose-up