#!/bin/bash
/bin/bash /home/nci/nci_fastest/sonarqube/start-sonar.sh
/bin/bash /home/nci/nci_fastest/start-grid.sh
nohup java  -XX:MaxPermSize=256m  -Xmx1024M -jar /home/nci/nci_fastest/jenkins/jenkins.war > /home/nci/nci_fastest/jenkins/jenkins_log.txt 2>&1 &
