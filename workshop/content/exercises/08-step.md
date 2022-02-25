Here's a key rule for using container images: don't use the "latest" tag. Always tag images with specific, meaningful image, and in fact deployments of images in your environment should not be done with latest.

The same goes for using images, we shouldn't just specify something like "debian" as the base when we can be more specific, because that base image will be updated at any time.

```editor:select-matching-text
file: ~/demo/08.Dockerfile
text: "FROM debian:buster"
```

### Build the Docker image.

```terminal:execute
command: cd ~/demo; time docker build -f 08.Dockerfile . -t helloworld:8
```

List the images.

```terminal:execute
command: docker images
```