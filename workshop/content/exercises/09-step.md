However, "debian:buster" is still a mutable tag, which means it can change. Let's get more specific.

```editor:select-matching-text
file: ~/demo/09.Dockerfile
text: "FROM debian:buster-20220125"
```
### Build the Docker image.

```terminal:execute
command: cd ~/demo; time docker build -f 09.Dockerfile . -t helloworld:9
```

List the images.

```terminal:execute
command: docker images
```