# Basic Dockerfile for use in GitHub Actions workflows

FROM ubuntu:latest

ENV BLENDER_VERSION=4.4.3

RUN apt update && apt install -y --no-install-recommends \
  curl \
  ca-certificates \
  jq \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY ./scripts /app/scripts


CMD ["./scripts/run.sh"]
