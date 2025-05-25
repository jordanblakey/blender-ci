# Blender CI

## Links

<https://mirrors.iu13.net/blender/release/Blender4.4/blender-4.4.3-linux-x64.tar.xz>
<https://hub.docker.com/repository/docker/jordantblakey/blender/general>
<https://hub.docker.com/r/blendergrid/blender>
<https://docs.blender.org/manual/en/latest/advanced/command_line/render.html>
<https://nektosact.com/installation/gh.html>
<https://nektosact.com/installation/index.html>

## Using Act to Debug Locally

```sh
curl --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/nektos/act/master/install.sh | sudo bash

```

## Using blendergrid/blender container instead

```sh
# Alternatively, may be able to use this
docker run blendergrid/blender --python-expr "print('howdy')"^C
docker run blendergrid/blender -E CYCLES -f 1
# Confirm the version of blender running inside the docker container (latest)
docker run blendergrid/blender --version
# Render to a persistent volume outside the container
docker run -v $(pwd)/volume:/volume blendergrid/blender -E CYCLES -o volume/test_ -f 1

```
