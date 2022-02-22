First, let's build the jar file and test out the initial Dockerfile.

```terminal:execute
command: cd ~/demo/helloworld; mvn clean install
```

Now, review the Dockerfile

```editor:replace-text-selection
file: ~/demo/Dockerfile
text: |
    FROM debian
    COPY ./helloworld /app
    RUN apt-get update -y
    RUN apt-get -y install openjdk-11-jdk -y
    CMD [ "java", "-jar", "/app/target/helloworld-0.0.1-SNAPSHOT.jar"]
```

And build the Docker image.

```terminal:execute
command: cd ~/demo; docker build -t helloworld:0
```

Run it:

```terminal:execute
command: docker run -p 8080:8080 helloworld:0
session: 2
```

And curl that port:

```terminal:execute
command: curl localhost:8080
```

Stop the Docker container.


```terminal:interrupt
session: 2
```