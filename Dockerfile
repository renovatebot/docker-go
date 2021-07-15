# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.16.6

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:5-golang@sha256:5efcf770583572003e51bcb9e6f8fdd621864d7c1e7b5a0faf23e3666321ba82

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
