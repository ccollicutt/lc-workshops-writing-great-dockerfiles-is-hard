In this section we'll quickly build a jar file which we will use as part of most of the Dockerfiles in this workshop. (In other sections we'll use a container to compile the jar file.)

### Build the Jar File

First, let's build the jar file and test out the initial Dockerfile.

Valiate java version.

```terminal:execute
command: java -version
```

Build the jar.

```terminal:execute
command: cd ~/demo/helloworld; mvn clean install
```

### Review, Build, and Run Initial Dockerfile

Now, review the Dockerfile. Below you can see we are installing the OpenJDK 11 version of Java.

```editor:open-file
file: ~/demo/00.Dockerfile
```

Build the Docker image.

```terminal:execute
command: cd ~/demo; time docker build -f 00.Dockerfile . -t helloworld:0
```

List the images.

```terminal:execute
command: docker images
```

Run it.

```terminal:execute
command: docker run -p 8080:8080 helloworld:0
session: 2
```

And curl it.

```terminal:execute
command: curl localhost:8080
```

Stop the Docker container.

```terminal:interrupt
session: 2
```