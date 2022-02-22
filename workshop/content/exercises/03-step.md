Dockerfile caching can be dangerous when used the wrong way. Try to combine related RUN commands to ensure they are cached as a unit. The most common are apt-get or yum install commands. When installing packages from package managers, you always want to update the index and install packages in the same RUN: together they form one cacheable unit. Otherwise you risk installing outdated packages.

```editor:replace-text-selection
file: ~/demo/Dockerfile
text: |
    FROM debian
    # Note the \ and && to have only one RUN command
    RUN apt-get update -y \
        && apt-get -y install openjdk-11-jdk -y
    COPY helloworld/target/helloworld-0.0.1-SNAPSHOT.jar /app/
    CMD [ "java", "-jar", "/app/target/helloworld-0.0.1-SNAPSHOT.jar"]
```

And build the Docker image.

```terminal:execute
command: cd ~/demo; docker build -t helloworld:3
```