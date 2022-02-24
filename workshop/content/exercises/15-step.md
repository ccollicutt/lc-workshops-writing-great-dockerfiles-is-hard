### Now...Update All the Dockerfiles

We now have different Dockerfiles for:

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

That doesn't seem like much, but what if it's 10, or 50, or 100? The problem is linear growth, each time we have a new app (and how often do we deprecate apps...almost never) we have a new Dockerfile. Scaling becomes a huge issue. The Dockerfiles never stop appearing.

Many organizations will try to abstract away this complexity, but still are stuck building that abstraction layer, which is a considerable amount of work, and may be repeated more than once throughout the organization.