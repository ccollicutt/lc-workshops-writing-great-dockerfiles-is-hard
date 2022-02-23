FROM maven:3-openjdk-11 AS builder
WORKDIR /app
COPY helloworld/pom.xml /app/
RUN mvn -e -B dependency:resolve
COPY helloworld/ /app/
RUN mvn -e -B package

# Now we have a two stage build - the "builder" and the runnable image
FROM debian:buster-20220125
RUN apt-get update -y \
    && apt-get -y install openjdk-11-jdk -y \
    && rm -rf /var/lib/apt/lists/*
COPY --from=builder /app/target/helloworld-0.0.1-SNAPSHOT.jar /app/target
CMD [ "java", "-jar", "/app/target/helloworld-0.0.1-SNAPSHOT.jar"]