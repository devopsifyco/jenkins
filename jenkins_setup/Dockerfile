FROM eclipse-temurin:11.0.12_7-jdk-focal
RUN mkdir -p /opt
ADD jenkins-cli.jar /opt/jenkins-cli.jar
# Configure Jenkins pipline
ADD ./jobconfigs /opt/jobconfigs
ADD ./createjobs.sh /opt/createjobs.sh