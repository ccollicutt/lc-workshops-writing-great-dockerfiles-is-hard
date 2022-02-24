FROM debian # <==== Move back to debian from the openjdk image
RUN apt-get update -y \
    && apt-get -y install openjdk-11-jdk -y
COPY helloworld/target/helloworld-0.0.1-SNAPSHOT.jar /app/
CMD [ "java", "-jar", "/app/target/helloworld-0.0.1-SNAPSHOT.jar"]