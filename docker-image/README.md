## Notes

A simple docker container to run Blender in CI pipelines.

Note: May not need to write this since blendergrid/blender container runs latest Blender.

```sh
# docker run -it blender

# optionally push the image to Docker Hub
if [ "$1" == "push" ]; then
  docker push jordantblakey/blender:latest
  docker rmi -f $(docker images -q)
  docker pull jordantblakey/blender:latest
fi

# this skips CMD and RUN layers, don't use
# docker run -it jordantblakey/blender /bin/bash
# instead, run named container in background
docker run --name blender jordantblakey/blender &
# then start terminal inside it
docker exec -it blender bash

alias drmi "docker rmi (docker images -q)"
alias dcr "docker container rm (docker container ls -q)"
```
