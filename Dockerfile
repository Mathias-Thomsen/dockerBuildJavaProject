FROM alpine
WORKDIR /root/runJavaProject
COPY Rundocker.java /root/runJavaProject

RUN apk add openjdk8
ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk
ENV PATH $PATH:$JAVA_HOME/bin

RUN javac Rundocker.java

ENTRYPOINT java Rundocker