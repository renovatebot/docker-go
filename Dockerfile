# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.18.3

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:0d8ca4d35654635dc370c76f8f5a3eed004291110a05153f37cd30942d51ad4e

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
