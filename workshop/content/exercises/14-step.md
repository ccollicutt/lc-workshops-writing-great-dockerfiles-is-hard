So far we've been working with a single Dockerfile, which is typically paired with a single application. In the era of microservices, we'll have many applications, which would typically mean many Dockerfiles.

This is the point where most organizations struggle, it's obvious that they'll need to create some kind of baseline image, or images, and then a way to layer applications over top of it, but those requirements are deceptively challenging and there are all kinds of pitfalls and issues to encounter on that journey.

Also, every organization of a certain size or greater will go through the same journey, sometimes different groups within those organizations will duplicate efforts.

### Deploy More Apps

Let's add some more applications.

```terminal:execute
command: cd; git clone https://github.com/ccollicutt/tanzu-build-service-sample-apps
```

Build a golang application image.

Review the Dockerfile.

```editor:open-file
file: ~/demo/14-golang.Dockerfile
```

>NOTE: We will build these applications from our home directory, not ~/demo due to the location of the sample code that was pulled from git.

```terminal:execute
command: cd; time docker build -f 14-golang.Dockerfile . -t golang:1
```

Review the NodeJS Dockerfile.

```editor:open-file
file: ~/demo/14-nodejs.Dockerfile
```

Build a NodeJS application image.

```terminal:execute
command: cd; time docker build -f 14-nodejs.Dockerfile . -t nodejs:1
```

Finally, a Python application.

Review the Python Dockerfile.

```editor:open-file
file: ~/demo/14-python.Dockerfile
```

Build the Python application image.

```terminal:execute
command: cd; time docker build -f 14-python.Dockerfile . -t python:1
```

Review all the images we have so far.

```terminal:execute
command: docker images
```

### Update All the Dockerfiles

Now we have Dockerfiles for:

* Java
* Python
* NodeJS
* Golang

But what if we need to update the underlying images in the situation where the is a security issue somewhere, e.g. a CVE in the underlying OS. We've got four apps and four Dockerfiles, each with a different base image, a different way of getting modules, etc, etc. (What is the underlying OS for any of these images...seems like some are Alpine and Debian...?)

```
$ grep FROM 14*
14-golang.Dockerfile:FROM golang:1.17-alpine
14-nodejs.Dockerfile:FROM node:16
14-python.Dockerfile:FROM python:3.8-slim-buster
```

That doesn't seem like much, but what if it's 10, or 50, or 100? The problem is linear growth, each time we have a new app (and how often do we deprecate apps) we have a new Dockerfile. Scaling becomes a huge issue.

And this, organizations try to abstract away this complexity, but still are stuck building that abstraction.