Dockerfile caching can be challenging. Here we want to reduce the number of layers and when caching occurs by combinging RUN commands into the same layer. Together they form one cacheable unit. We want to avoid having outdated packages.

The way this is accomplished is by chaining commands together with the logical AND operator in bash, written as "&&" which means that execute the next command if the previous one succeeded.

```editor:select-matching-text
file: ~/demo/03.Dockerfile
text: "RUN apt-get update -y \"
after: 1
```

### Build the Docker image.

```terminal:execute
command: cd ~/demo; time docker build -f 03.Dockerfile . -t helloworld:3
```

List the images.

```terminal:execute
command: docker images
```