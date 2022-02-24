However, "official images", or more abstracted images, can be inscrutable...it might be hard to understand what is actually in them, or what changed since you last build your container image, or what the governance model is for that image. 

For example, the OpenJDK image has had its own share of issues (which, of course, is perfectly normal for any project). Below is an example where the verison of Java running in the images was...not what one would expect.

>Right now, anyone using the *Official* Docker images for OpenJDK 8 and 11
(https://hub.docker.com/_/openjdk) is probably thinking that they are running
8u212 or 11.0.3, when what they are actually running is an interim "work in
progress build", with several bugs unaddressed, several updates missing,
and (critically) CVE vulnerabilities that were fixed in the actual
8u212 and 11.0.3 un-addressed. [OpenJDK Mailing List](https://mail.openjdk.java.net/pipermail/jdk8u-dev/2019-May/009330.html)

It does really become about governance, and trust, and accuracy. In some situations it's hard to even tell where to look for the trusty worthy people.

In this case, one would also assume (which may not be fair) that it was the OpenJDK project that was maintaining this image, but that was not the case, at this time, instead it was actually Docker the company!

### Due Dilligence 

All this said, the point isn't who or what wasn't done well at what time, it's that the governance model and provenance of abstracted, "official" images is important. Who made them? What's in them? How often are they updated? etc, etc. Some due diligence around these images is key, and in fact this goes for any image, base image, official project image, or a random image from Docker Hub.