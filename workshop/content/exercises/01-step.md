First, let's build the jar file.

```terminal:execute
command: cd ~/demo/helloworld; mvn clean install
```

Now, review the Dockerfile

```editor:open-file
file: ~/demo/Dockerfile
```

And build the Docker image.

```terminal:execute
command: cd ~/demo; docker build -t helloworld:1
```

Run it:

```terminal:execute
command: docker run -p 8080:8080 helloworld:1
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