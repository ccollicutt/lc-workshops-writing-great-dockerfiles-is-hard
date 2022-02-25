A big part of using Dockerfiles is layer caching. If the layers don't need to change, then they shouldn't. So we want to setup our Dockerfile so that we don't invalidate the cache when making simple changes that don't require it.

The example below is that if we make changes to our application, ie. the jar file, then that should invalidate the cache for that layer and the layers above it, which would mean the apt update and apt install commands would get run even if we're just updating our application.

Here we've moved the COPY command to be **after** the apt updates.

```editor:select-matching-text
file: ~/demo/01.Dockerfile
text: "COPY ./helloworld /app"
```

### Build the Docker image.

```terminal:execute
command: cd ~/demo; time docker build -f 01.Dockerfile . -t helloworld:1
```

List the images.

```terminal:execute
command: docker images
```