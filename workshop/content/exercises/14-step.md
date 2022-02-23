In the previous step we used the Maven image to build the jar file, but that means the Maven image is the one used to actually run the application. That's probably not what we want. We want one process to compile the jar and another container to run it. That's where multi-stage builds come in.

```editor:open-file
file: ~/demo/12.Dockerfile
```

### Build the Docker image.

```terminal:execute
command: cd ~/demo; time docker build -f 13.Dockerfile . -t helloworld:13
```

List the images.

```terminal:execute
command: docker images
```