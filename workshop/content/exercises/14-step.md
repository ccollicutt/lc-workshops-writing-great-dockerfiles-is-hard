So far we've been working with a single Dockerfile, which is typically paired with a single application. In the era of microservices, we'll have many applications, which would typically mean many Dockerfiles.

This is the point where most organizations struggle, it's obvious that they'll need to create some kind of baseline image, or images, and then a way to layer applications over top of it, but those requirements are deceptively challenging and there are all kinds of pitfalls and issues to encounter on that journey.

Also, every organization of a certain size or greater will go through the same journey, sometimes different groups within those organizations will duplicate efforts.

### Deploy More Apps

Most companies don't have a single Java application, so let's add some more applications.

Here we'll add apps based on:

* Golang
* Python
* NodeJS

First, clone the sample applications code from github.

```terminal:execute
command: cd; git clone https://github.com/ccollicutt/tanzu-build-service-sample-apps
```

**Build a golang application image.**

Review the Dockerfile.

```editor:open-file
file: ~/demo/14-golang.Dockerfile
```

>NOTE: We will build these applications from our home directory, not ~/demo due to the location of the sample code that was pulled from git.

```terminal:execute
command: cd; time docker build -f demo/14-golang.Dockerfile . -t golang-app:1
```

**Build a NodeJS application image**

Review the NodeJS Dockerfile.

```editor:open-file
file: ~/demo/14-nodejs.Dockerfile
```

Build a NodeJS application image.

```terminal:execute
command: cd; time docker build -f demo/14-nodejs.Dockerfile . -t nodejs-app:1
```

**Build a Python application image**

Review the Python Dockerfile.

```editor:open-file
file: ~/demo/14-python.Dockerfile
```

Build the Python application image.

```terminal:execute
command: cd; time docker build -f demo/14-python.Dockerfile . -t python-app:1
```

Review all the images we have so far.

```terminal:execute
command: docker images
```

