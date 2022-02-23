FROM debian
RUN apt-get update -y
RUN apt-get -y install openjdk-11-jdk -y
# We moved this line to the end
COPY ./helloworld /app
CMD [ "java", "-jar", "/app/target/helloworld-0.0.1-SNAPSHOT.jar"]