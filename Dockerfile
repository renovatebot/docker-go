# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.19.0

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:284322089f964f89d3f6b448ff2fc7158767f24e7f0b4efe1fd6d1c6749b5fd8

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
