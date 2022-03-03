# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.17.8

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:21dc773894c12276bb3ed23dac42728eddcab5dcb406db7eb03295f226ce7de9

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
