FROM debian:buster
# Note the \ and && to have only one RUN command
RUN apt-get update -y \
    && apt-get -y install openjdk-11-jdk -y
COPY helloworld/target/helloworld-0.0.1-SNAPSHOT.jar /app/
CMD [ "java", "-jar", "/app/target/helloworld-0.0.1-SNAPSHOT.jar"]