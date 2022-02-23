Before we get back to your package manager: do not use the latest tag, which is equivalent to not using a tag. It has the convenience of always being available for images but it can introduce breaking changes over time. It can cause a build to fail depending on how far apart in time you rebuild the Dockerfile without cache.


```editor:open-file
file: ~/demo/08.Dockerfile
```

### Build the Docker image.

```terminal:execute
command: cd ~/demo; time docker build -f 08.Dockerfile . -t helloworld:8
```

List the images.

```terminal:execute
command: docker images
```