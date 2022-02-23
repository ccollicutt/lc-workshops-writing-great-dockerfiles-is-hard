A big part of using Dockerfiles is layer caching. If the layers don't need to change, then they shouldn't. So we want to setup our Dockerfile so that we don't invalidate the cache when making simple changes that don't require it.

The example below is that if we make changes to our application, ie. the jar file, then that should invalidate the cache for that layer and the layers above it, which would mean the apt update and apt insatll commands would get run even if we're just updating our application.

```editor:open-file
file: ~/demo/01.Dockerfile
```

### Build the Docker image.

```terminal:execute
command: cd ~/demo; time docker build -f 01.Dockerfile . -t helloworld:1
```

