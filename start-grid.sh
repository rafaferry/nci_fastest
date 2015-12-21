#!/bin/bash
echo 'usage: "./start-grid.sh [quantidadeDeNodes]" se a quantidade de nodes nao for passada por parametro, inicia 5 nodes.'
docker-compose up -d

if [ $# -eq 0 ]
then
	docker-compose scale firefox=5
else
	docker-compose scale firefox=$1
fi
