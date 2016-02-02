#!/bin/bash
echo 'usage: "./start-grid.sh [quantidadeDeNodes]" se a quantidade de nodes nao for passada por parametro, inicia 2 nodes.'
docker-compose --x-networking up -d

if [ $# -eq 0 ]
then
	docker-compose --x-networking scale firefox=2
else
	docker-compose --x-networking scale firefox=$1
fi
