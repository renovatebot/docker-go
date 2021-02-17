# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.16.0

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:4-golang@sha256:6c4c67ec88be0d98e97e1c7f595657736e63dcac6f0348506c6b25bce47817ab

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
