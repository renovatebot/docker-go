# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.19.2

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:0beb042a8f0c8184d765ca0f2190ccc3e502773dc972584c7923c019111ae63e

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
