You don’t want a change to a simple configuration file to bust your dependency cache, so it’s best to decouple the installation of dependencies from the rest of the build. I call this “Dockerfile gymnastics”:

If we make a change to the pom file, we don't want that to undo our caching. Below let's add some lines that allow us to manage the pom.xml file separately.


```editor:open-file
file: ~/demo/12.Dockerfile
```

### Build the Docker image.

```terminal:execute
command: cd ~/demo; time docker build -f 12.Dockerfile . -t helloworld:12
```