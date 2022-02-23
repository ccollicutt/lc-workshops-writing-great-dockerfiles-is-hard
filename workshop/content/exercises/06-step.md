According to Snyk, the most popular images on Docker Hub are riddled with vulnerabilities. And in some cases, like the OpenJDK “mystery meat” incident, they don’t contain what they advertise. Let’s revert to the official Debian image.

However, "official images" can often be inscrutable...it might be hard to understand what is actually in them, or what changed since you last build your container image. For the purposes of this document, let's revert to using plain debian.


```editor:open-file
file: ~/demo/06.Dockerfile
```

