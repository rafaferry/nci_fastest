#!/bin/bash
#Cria um registro da imagem para o host docker no etc/hosts sobre o nome de dockerhost
HOST_IP=$(netstat -nr | grep '^0\.0\.0\.0' | awk '{print $2}')
echo -e $HOST_IP'\tdockerhost' >> /etc/hosts

xvfb-run --server-args=":99.0 -screen 0 2000x2000x16 -ac" \
java -jar selenium-server-standalone-${VERSION}.jar \
-role node \
-hub http://fastest_hub_1:4444/grid/register \
-browserTimeout 150000 \
-timeout 150000 \
-browser browserName=firefox,maxInstances=5

