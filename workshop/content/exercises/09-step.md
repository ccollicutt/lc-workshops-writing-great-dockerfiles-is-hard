Whoops, buster is actually still a mutable tag. You can be even more specific:


```editor:open-file
file: ~/demo/09.Dockerfile
```
### Build the Docker image.

```terminal:execute
command: cd ~/demo; time docker build -f 09.Dockerfile . -t helloworld:9
```

List the images.

```terminal:execute
command: docker images
```