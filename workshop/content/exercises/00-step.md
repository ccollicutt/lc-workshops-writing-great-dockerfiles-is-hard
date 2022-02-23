First, let's build the jar file and test out the initial Dockerfile.

```terminal:execute
command: java -version
```


```terminal:execute
command: cd ~/demo/helloworld; mvn clean install
```

Now, review the Dockerfile. Below you can see we are installing the OpenJDK 11 version of Java.

```editor:open-file
file: ~/demo/00.Dockerfile
```

And build the Docker image.

```terminal:execute
command: cd ~/demo; time docker build -f 00.Dockerfile . -t helloworld:0
```

Run it:

```terminal:execute
command: docker run -p 8080:8080 helloworld:0
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