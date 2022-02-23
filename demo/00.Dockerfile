    FROM debian
    COPY ./helloworld /app
    RUN apt-get update -y
    RUN apt-get -y install openjdk-11-jdk -y
    CMD [ "java", "-jar", "/app/target/helloworld-0.0.1-SNAPSHOT.jar"]