FROM renovate/buildpack:1@sha256:2a94923b7bb1956f5faf1c82b4578436774e13786ce4f693a713b63185e88af2

# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.14.2
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
      org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
