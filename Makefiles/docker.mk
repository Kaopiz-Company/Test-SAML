rm-image:
	- docker rmi -f $(shell docker images -q)
rm-container:
	- docker rm $(shell docker ps -aq)
rm-volume:
	- docker volume rm -f $(shell docker volume ls -q)
rm-network:
	- docker network rm $(shell docker network ls -q)