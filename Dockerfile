# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.17.7

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:34d72ad1fa883dc85c48cabc9cd621bb1ec3c9cdaa5fbfa458c1b0fa89530b74

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
