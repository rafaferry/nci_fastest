#!/bin/bash
xvfb-run --server-args=":99.0 -screen 0 2000x2000x16 -ac" \
java -jar selenium-server-standalone-${VERSION}.jar \
-role node \
-hub http://$HUB_1_PORT_4444_TCP_ADDR:4444/grid/register \
-browser browserName=firefox,maxInstances=5
