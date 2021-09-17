composer-install:
	- docker-compose -f docker-compose.development.yml run --rm composer install