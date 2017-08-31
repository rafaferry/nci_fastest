FROM sonarqube:6.5

ENV SONARQUBE_HOME /opt/sonarqube

RUN wget "https://sonarsource.bintray.com/Distribution/sonar-scm-git-plugin/sonar-scm-git-plugin-1.2.jar" \
    && wget "https://sonarsource.bintray.com/Distribution/sonar-java-plugin/sonar-java-plugin-4.12.0.11033.jar" \
    && wget "https://sonarsource.bintray.com/Distribution/sonar-github-plugin/sonar-github-plugin-1.4.1.822.jar" \
    && mv *.jar $SONARQUBE_HOME/extensions/plugins \
    && ls -lah $SONARQUBE_HOME/extensions/plugins
