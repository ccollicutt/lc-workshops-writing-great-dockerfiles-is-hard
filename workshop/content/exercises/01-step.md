The order of commands in a Dockerfile determines when a command’s cache is invalidated. Changing files or modifying lines in the Dockerfile will break subsequent steps of the cache. You must order your commands from least to most frequently changing steps to optimize your Dockerfile caching.

```editor:replace-text-selection
file: ~/exercises/sample.txt
text: |
    FROM debian
    RUN apt-get update -y
    RUN apt-get -y install openjdk-11-jdk -y
    # We moved this line to the end
    COPY ./helloworld /app
    CMD [ "java", "-jar", "/app/target/helloworld-0.0.1-SNAPSHOT.jar"]
```

And build the Docker image.

```terminal:execute
command: cd ~/demo; docker build -t helloworld:1
```

