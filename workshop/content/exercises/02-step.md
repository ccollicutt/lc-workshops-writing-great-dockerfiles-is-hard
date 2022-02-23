In the previous command we're copying the entire directory, but really we should be specific about what we want to copy, and what we really only need is the pre-built jar file.

```editor:open-file
file: ~/demo/02.Dockerfile
```

### Build the Docker image.

```terminal:execute
command: cd ~/demo; time docker build -f 02.Dockerfile . -t helloworld:2
```

List the images.

```terminal:execute
command: docker images
```