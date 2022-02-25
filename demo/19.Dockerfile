FROM adoptopenjdk/openjdk11:alpine-jre as builder
# First stage : Extract the layers
WORKDIR /app
ARG JAR_FILE=helloworld/target/*.jar
COPY ${JAR_FILE} /app.jar
RUN java -Djarmode=layertools -jar /app.jar extract

FROM adoptopenjdk/openjdk11:alpine-jre as runtime
# Second stage : Copy the extracted layers
COPY --from=builder /app/dependencies/ ./
COPY --from=builder /app/spring-boot-loader ./
COPY --from=builder /app/snapshot-dependencies/ ./
COPY --from=builder /app/application/ ./
CMD ["java", "org.springframework.boot.loader.JarLauncher"]