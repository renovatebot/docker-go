# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.17.8

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:2279a1ffacff20ecae97dc0c2050b03e6d5550ce3a21f9389b503565671af243

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
