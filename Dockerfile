# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.19.2

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:c831b621e16266121d75c4aaf2d53827b86f9f9c77b0c6004716de5c1b292737

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
