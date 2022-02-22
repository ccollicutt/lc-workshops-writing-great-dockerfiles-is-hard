Be careful though. Too many line buddies (i.e. chaining all commands into one RUN instruction) can bust the cache easily, hurting the development cycle. In the worst cases, you end up with RUN commands like this 114 line example from the official Python image on Docker Hub (however, this example is unavoidable because all the steps need to be one cacheable unit).

```editor:open-file
file: ~/demo/04-step.txt
```
