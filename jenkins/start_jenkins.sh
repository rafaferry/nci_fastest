#!/bin/bash
echo "Starting Jenkins at port 8080"
nohup java  -XX:MaxPermSize=256m  -Xmx1024M -jar jenkins.war > jenkins_log.txt 2>&1
