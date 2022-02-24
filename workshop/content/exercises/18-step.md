One piece we kind of glassed over was the different ways to download/install/use the languages dependencies. Each language will have its own dependency manager, some languages have several of them. 

To properly use a Dockerfile to build/run the language it will be key to understand how each of these works. While we may be able to template the Dockerfiles, in some fashion, someone will still need to understand how these dependencies work and what their specialized needs, and issues, are.

e.g.

* Maven
* Gradle
* Pip
* npm
* golang modules
* etc...

These all have their own quirks that will need to be accommodated.