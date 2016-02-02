#!/bin/bash
echo 'usage: "./start-grid.sh [quantidadeDeNodes]" se a quantidade de nodes nao for passada por parametro, inicia 2 nodes.'
docker-compose up -d

if [ $# -eq 0 ]
then
	docker-compose scale firefox=2
else
	docker-compose scale firefox=$1
fi
