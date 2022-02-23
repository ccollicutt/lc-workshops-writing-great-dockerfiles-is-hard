The previous example retained the Maven cache, and Maven itself in the final image. We can avoid that by using multi-stage builds. Multi-stage builds are recognizable by the multiple FROM statements. Each FROM starts a new stage. They can be named with the AS keyword which we use to name our first stage “builder” to be referenced later. It will include all our build dependencies in a consistent environment.

Make sure you pick compatible base images for each stage. It is possible to mix images that produce a final image that won’t run correctly.

Multi-stage builds have their limitations, too. They can’t recursively copy files, they can’t copy patterns, and they can’t rely on the environment (such as env vars or users) being copied over to the new image.