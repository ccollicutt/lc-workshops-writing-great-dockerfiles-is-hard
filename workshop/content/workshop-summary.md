It would seem from the workshop that building your own Dockefiles is actually quite challenging, especially as their number and diversity increase. Over time it's likely not realistic to manage your own Dockerfiles.

Instead of crafting and desiging your own internal Dockerfile management system, it makes more sense to adopt an industry standard, Buildpacks, and simply use those.

Going further, you can talk to VMware and implement the Tanzu Build Service, which takes image building even a step further, and the Tanzu Application Platform, which not only removes the need for Dockerfiles but also thousands of lines of Kubernetes manifests.


### Resources for Writing Your Own Dockerfiles

* [14 best practices for containerising your Java applications](https://www.tutorialworks.com/docker-java-best-practices/)
* [The Quest for Minimal Docker Images, part 2](https://jpetazzo.github.io/2020/03/01/quest-minimal-docker-images-part-2/)
* [Dockerizing Java 11](https://github.com/leapingbytes/java11-docker-tips-and-tricks)
* [The Perfect Dockerfile for Python](https://luis-sena.medium.com/creating-the-perfect-python-dockerfile-51bdec41f1c8)
* [IMPORT directive will never be implemented](https://stackoverflow.com/questions/69234878/using-shared-dockerfile-for-multiple-dockerfiles)

### Resources for Using Spring Boot images, Pack, and Tanzu Build Service

* [Creating Docker Images with Spring Boot](https://spring.io/blog/2020/01/27/creating-docker-images-with-spring-boot-2-3-0-m1)

