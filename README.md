# Blender CI

## Links

## Using Act to Debug Github Actions Locally

<https://nektosact.com/installation/>
<https://nektosact.com/installation/gh.html>

```sh
# use install script to install Docker Engine and act
./install.sh

act # run all workflows locally
act --list
# sim Actions run on push
gh act push
# sim Actions run on pull_request
gh act pull_request

# optionally install github cli extension
gh extension install https://github.com/nektos/gh-act
# commands are simply prefixed with gh, for example
gh act --list
```

## Using containerized Blender (blendergrid/blender:latest)

<https://hub.docker.com/r/blendergrid/blender>
<https://docs.blender.org/manual/en/latest/advanced/command_line/render.html>

```sh
# Command flags work as with `blender`
docker run blendergrid/blender --python-expr "print('howdy')"
docker run blendergrid/blender -E CYCLES -f 1
# Check blender version running in container (>=4.4.3)
docker run blendergrid/blender --version
# Render to a persistent volume outside the container
docker run -v $(pwd)/volume:/volume blendergrid/blender -E CYCLES -o volume/test_ -f 1
# Get a terminal in the container
docker run -it --entrypoint /bin/bash blendergrid/blender
# Note that blender is not on PATH, need to do this:
#: root@ee4d02de2b09:/# /usr/local/blender/blender --background
# Blender 4.4.3 (hash 802179c51ccc built 2025-04-29 15:12:13)
```
