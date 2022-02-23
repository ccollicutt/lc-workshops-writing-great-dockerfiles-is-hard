Let’s get back to package managers. Make sure you clean up after them.

Package managers maintain their own cache which may end up in the image. One way to avoid this is to remove the cache in the same RUN instruction that installed packages. Removing it in another RUN instruction would not reduce the image size.

```editor:open-file
file: ~/demo/10.Dockerfile
```

### Build the Docker image.

```terminal:execute
command: cd ~/demo; time docker build -f 10.Dockerfile. -t helloworld:10
```

List the images.

```terminal:execute
command: docker images
```