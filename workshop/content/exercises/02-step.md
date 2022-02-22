Wait, there’s more. The COPY command should be more specific than the previous example. When copying files into your image, make sure you are very specific about what you want to copy. Any changes to the files being copied will break the cache. In the example above, only the pre-built JAR file is needed inside the image and so only it needs to be copied

```editor:replace-text-selection
file: ~/demo/Dockerfile
line: 1
text: |
    FROM debian
    RUN apt-get update -y
    RUN apt-get -y install openjdk-11-jdk -y
    # Copy the specific jar
    COPY helloworld/target/helloworld-0.0.1-SNAPSHOT.jar /app/
    CMD [ "java", "-jar", "/app/target/helloworld-0.0.1-SNAPSHOT.jar"]
```

And build the Docker image.

```terminal:execute
command: cd ~/demo; time docker build . -t helloworld:3
```