FROM maven:3.6.3-jdk-11-slim
WORKDIR /root/runJavaProject
COPY . /root/runJavaProject

RUN mvn package

ENTRYPOINT java -jar target/my-project.jar
