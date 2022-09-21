# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.19.1

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:d8eb54a4a9aa9819b57120531fae280680d7246015405b84c64b3df3833ebd28

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
