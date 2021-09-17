compose:
	- docker-compose -f docker-compose.development.yml
compose-up: 
	- docker-compose -f docker-compose.development.yml up
compose-up-d:
	- docker-compose -f docker-compose.development.yml up -d
compose-down:
	- docker-compose -f docker-compose.development.yml down
compose-down-rmi-local:
	- docker-compose -f docker-compose.development.yml down --rmi local
compose-destroy:
	- docker-compose -f docker-compose.development.yml down --rmi local
compose-start:
	- docker-compose -f docker-compose.development.yml start
compose-stop:
	- docker-compose -f docker-compose.development.yml stop
compose-ps:
	- docker ps
composer-require:
	- docker-compose -f docker-compose.development.yml run --rm composer require
composer-update:
	- docker-compose -f docker-compose.development.yml run --rm composer update
composer-dump-autoload:
	- docker-compose -f docker-compose.development.yml run --rm composer dump-autoload
