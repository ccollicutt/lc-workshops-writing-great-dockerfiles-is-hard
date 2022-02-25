However, the question becomes, where does this command chaining come to an end? Here's an example of a real-life massive RUN command. We don't want our Dockerfiles to become this unruly. That said, there may be situations where, based on how Dockerfiles work, there is no other solution.

```editor:select-matching-text
file: ~/demo/04.Dockerfile
text: "RUN set -ex"
after: 115
```
