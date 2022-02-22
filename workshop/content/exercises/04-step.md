Dockerfile caching can be dangerous when used the wrong way. Try to combine related RUN commands to ensure they are cached as a unit. The most common are apt-get or yum install commands. When installing packages from package managers, you always want to update the index and install packages in the same RUN: together they form one cacheable unit. Otherwise you risk installing outdated packages.

```editor:open-file
file: ~/demo/04-step.txt
```

And build the Docker image.

```terminal:execute
command: cd ~/demo; docker build -t helloworld:2
```