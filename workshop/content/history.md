One of the harder things to grasp in the container image world is that there really isn't such a thing as a "docker image". Perhaps at one time there was, Docker partially invented, certainly popuplarized the idea of images and containers, but ultimately they donated the specification for a "docker image" to the [Open Containers Initiative](https://opencontainers.org/). Which means that what we are really using when we build an image with Docker, or any other tool, is the OCI image specification, which is free to be implemented by any software, not just the docker CLI.

About the OCI:

>The mission of the Open Container Initiative (OCI) is to promote a set of common, minimal, open standards and specifications around container technology. - [OCI](https://opencontainers.org/faq/)

Confused? Just keep these things in mind:

1. There is no such thing as a "docker image" only "OCI images"
2. The docker CLI is not the only piece of software that implements the OCI image specification, there are many implementations