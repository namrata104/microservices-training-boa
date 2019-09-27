FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD target/kycprocess26092019-0.0.1-SNAPSHOT.jar kycprocessdocker.jar
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /kycprocessdocker.jar" ]