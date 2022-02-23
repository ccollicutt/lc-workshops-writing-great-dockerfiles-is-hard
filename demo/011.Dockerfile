FROM maven:3-openjdk-11
WORKDIR /app
COPY helloworld/ /app/ 
RUN mvn -e -B package
CMD [ "java", "-jar", "/app/target/helloworld-0.0.1-SNAPSHOT.jar"]