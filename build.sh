#!/bin/bash

set -e

MINOR_VERSION=4.4
BUGFIX_VERSION=4.4.3
TAR_FILE="blender-${BUGFIX_VERSION}-linux-x64.tar.xz"
URL="https://mirrors.iu13.net/blender/release/Blender${MINOR_VERSION}/"


printf "${TAR_FILE} downloaded..."

if [ ! -f "downloads/$TAR_FILE" ]; then
    printf "no\ndownloading blender...\n"
    wget -P downloads https://mirrors.iu13.net/blender/release/Blender4.4/blender-4.4.3-linux-x64.tar.xz
else
    echo "yes"
fi

if [ ! -d "downloads/blender" ]; then
    echo "Extracting Blender ${BUGFIX_VERSION}..."
    mkdir -p downloads/blender
    tar -xf downloads/$TAR_FILE -C downloads/blender --strip-components=1
else
    echo "Blender ${BUGFIX_VERSION} already extracted."
fi

# docker container rm blender --force
# docker build --tag jordantblakey/blender .

# docker run --name blender jordantblakey/blender

# docker run --name blender jordantblakey/blender &