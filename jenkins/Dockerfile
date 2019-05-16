FROM jenkins/jenkins:lts
#FROM jenkins/jenkins:1.642.4
USER root

# get maven 3.3.3
RUN wget --no-verbose -O /tmp/apache-maven-3.3.3.tar.gz http://archive.apache.org/dist/maven/maven-3/3.3.3/binaries/apache-maven-3.3.3-bin.tar.gz
# install maven
RUN tar xzf /tmp/apache-maven-3.3.3.tar.gz -C /opt/
RUN ln -s /opt/apache-maven-3.3.3 /opt/maven
RUN ln -s /opt/maven/bin/mvn /usr/local/bin
RUN rm -f /tmp/apache-maven-3.3.3.tar.gz
ENV MAVEN_HOME /opt/maven


RUN apt-get install -y git;

RUN rm -rf /var/lib/apt/lists/*

ENV JENKINS_OPTS --httpPort=8080
ENV JAVA_OPTS=-Xmx1g -XX:MaxPermSize=256m
ENV TERM=xterm
EXPOSE 8080
