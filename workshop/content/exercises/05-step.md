We don't always have to use a base image and then install our software on top of it. Previously we were using the base debian image and then installing OpenJDK ourselves. But there is an existing image that we can already use...an "official image."

```editor:select-matching-text
file: ~/demo/05.Dockerfile
text: "FROM openjdk"
```

### Build the Docker image.

```terminal:execute
command: cd ~/demo; time docker build -f 05.Dockerfile . -t helloworld:5
```

List the images.

```terminal:execute
command: docker images
```

Run it.

```terminal:execute
command: docker run -p 8080:8080 helloworld:5
session: 2
```

Curl it.

```terminal:execute
command: curl localhost:8080
```

Stop the Docker container.

```terminal:interrupt
session: 2
```