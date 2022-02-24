FROM maven:3-openjdk-11
WORKDIR /app
COPY pom.xml
COPY modules/frontend/pom.xml
COPY modules/backend/pom.xml
RUN mvn -e -B dependency:resolve
COPY modules/frontend/src ./modules/frontend/src
COPY modules/backend/src ./modules/frontend/src
RUN mvn -e -B package
CMD [ "java", "-jar", "/app/target/app.jar"]