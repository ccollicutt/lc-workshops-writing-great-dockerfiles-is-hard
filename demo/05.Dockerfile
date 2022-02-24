FROM openjdk # <=== We are now using the openjdk official image
COPY helloworld/target/helloworld-0.0.1-SNAPSHOT.jar /app/
CMD [ "java", "-jar", "/app/target/helloworld-0.0.1-SNAPSHOT.jar"]