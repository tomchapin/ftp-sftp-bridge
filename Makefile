#!make

.PHONY: all

build:
	docker-compose build

up:
	docker-compose up -d

down:
	docker-compose down

stop:
	docker-compose stop

restart:
	docker-compose restart

logs:
	docker-compose logs -f

clean:
	docker volume rm ftp-sftp-bridge_sshfs_user1 && docker volume rm ftp-sftp-bridge_sshfs_user2

shell:
	docker exec -it ftp-sftp-bridge /bin/sh
