include ./Makefiles/*.mk

up: 
	- make compose-up-d
	- make artisan-storage-link
	- make refresh
down: compose-down-rmi-local
start: compose-start
stop: compose-stop
check: compose-ps
optimize: artisan-optimize-clear
db-refresh: artisan-migrate-fresh-seeder
clean-storage:
	- make npm-clean-storage
	- make artisan-storage-link
