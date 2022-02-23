Another way to create miminal images to to build from scratch.

> This image is most useful in the context of building base images (such as debian and busybox) or super minimal images (that contain only a single binary and whatever it requires, such as hello-world). 
> You can use Docker’s reserved, minimal image, scratch, as a starting point for building containers. Using the scratch “image” signals to the build process that you want the next command in the Dockerfile to be the first filesystem layer in your image.
> While scratch appears in Docker’s repository on the hub, you can’t pull it, run it, or tag any image with the name scratch. Instead, you can refer to it in your Dockerfile. - [scratch](https://hub.docker.com/_/scratch/)

It's pretty rare that you would use scratch, especially with something like Java, where we'd need to various Java runtime components to the image, which can get quite complex.

We can open up a complex "FROM: scratch" Dockerfile (originally taken from [here](https://github.com/surajrajanathrapully/dockerfiles/blob/master/scratch-java-scala)) which seems like it will work to have a from scratch image, but it's quite complex. Also, in this example we're using the Java 15 runtime, for a Jar that was built with 11.

```editor:open-file
file: ~/demo/07.Dockerfile
```

### Build the Docker image.

If you'd like, build and run that Dockerfile.

```terminal:execute
command: cd ~/demo; time docker build -f 07.Dockerfile . -t helloworld:7
```

The image is quite small...

```terminal:execute
command: docker images helloworld:7
```

E.g. output:

```
[~/demo] $ docker images helloworld:7
REPOSITORY   TAG       IMAGE ID       CREATED         SIZE
helloworld   7         91740a175d32   4 minutes ago   67.6MB
```

Run it:

```terminal:execute
command: docker run -p 8080:8080 helloworld:7
session: 2
```

And curl that port:

```terminal:execute
command: curl localhost:8080
```

Stop the Docker container.


```terminal:interrupt
session: 2
```

### Conclusion

We can do a lot of things with Dockerfiles, but the question is...should we? Who will be responsible for this Dockerfile for the life of the project?