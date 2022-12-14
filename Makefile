# Docker compose

compose-build:
	docker-compose build app

compose-up:
	docker-compose up -d

compose-down:
	docker-compose down

compose-logs:
	docker-compose logs -f

push-to-hub:
	docker-compose -f docker-compose.yml push app

# Local development

prepare-env:
	cp -n .env.example .env || true

magic: prepare-env compose-build compose-up

# CI

ci: prepare-env
	docker-compose -f docker-compose.yml build app
	docker-compose -f docker-compose.yml up --abort-on-container-exit
