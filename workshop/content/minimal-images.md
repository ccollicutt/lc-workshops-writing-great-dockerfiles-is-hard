When people get started with Dockerfiles quite quickly they start to think about how small they can get them. For some people it becomes an obsession. Certainly we want to have small images as opposed to large images...but how small relatively speaking? There's no easy answer, but one thing that should be understood is that quest is likely headed in the wrong direction. When using container images, there are various goals, not just one, ie. there's more to container images than just how small we can get them.

Other things to think about, rather than just image size:

* Caching
* Bill of material and software supply chain
* Modularity
* Language support
* Reusability
* Governance
* Ease of use
* Ease of change or "rebasing"

