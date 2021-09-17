npm-install:
	- docker-compose -f docker-compose.development.yml run --rm npm install
npm-run-dev:
	- docker-compose -f docker-compose.development.yml run --rm npm run dev
npm-run-watch:
	- docker-compose -f docker-compose.development.yml run --rm npm run watch
npm-run-production:
	- docker-compose -f docker-compose.development.yml run --rm npm run production
npm-clean-public:
	- docker-compose -f docker-compose.development.yml run --rm npm run clean_public
npm-clean-storage:
	- docker-compose -f docker-compose.development.yml run --rm npm run clean_storage
npm-clean-node-modules:
	- docker-compose -f docker-compose.development.yml run --rm npm run clean_node_modules
npm-clean:
	- docker-compose -f docker-compose.development.yml run --rm npm run clean

