Official images can save a lot of time spent on maintenance because all the installation steps are done for you and best practices are applied. If you have multiple projects, they can share those layers because they use exactly the same base image.

```editor:replace-text-selection
file: ~/exercises/sample.txt
text: |
    FROM openjdk
    COPY helloworld/target/helloworld-0.0.1-SNAPSHOT.jar /app/
    CMD [ "java", "-jar", "/app/target/helloworld-0.0.1-SNAPSHOT.jar"]
```

And build the Docker image.

```terminal:execute
command: cd ~/demo; docker build -t helloworld:5
```

Run it:

```terminal:execute
command: docker run -p 8080:8080 helloworld:5
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