So far we've used the jar file we built in the first step, but many organizations will want to have a container build the jar file as well.

Here we'll use the maven image to build the jar file. 

```editor:open-file
file: ~/demo/11.Dockerfile
```

### Build the Docker image.


```terminal:execute
command: cd ~/demo; time docker build -f 11.Dockerfile . -t helloworld:11
```

As you'll notice, we have to pull everything from maven repos every time we run this image.

List the images.

```terminal:execute
command: docker images
```