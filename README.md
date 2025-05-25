# Blender CI

## Links

<https://mirrors.iu13.net/blender/release/Blender4.4/blender-4.4.3-linux-x64.tar.xz>
<https://hub.docker.com/repository/docker/jordantblakey/blender/general>
<https://hub.docker.com/r/blendergrid/blender>

## Notes

A simple docker container to run Blender in CI pipelines. May need to do this to get the most recent version.

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
