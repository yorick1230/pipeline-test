FROM  jenkins/jenkins:alpine

#Disable the setup wizard
ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"

USER root

COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

# Copy config script to container
COPY --chown=jenkins:jenkins configuresonar.groovy /var/jenkins_home/init.groovy.d/configuresonar.groovy


#Install Docker
RUN apk add --update docker openrc

#Install kubectl
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.18.0/bin/linux/amd64/kubectl
RUN chmod u+x kubectl && mv kubectl /bin/kubectl

RUN apk add shadow
RUN groupadd --gid 1001 dsock
RUN gpasswd -a jenkins dsock 

#USER jenkins
