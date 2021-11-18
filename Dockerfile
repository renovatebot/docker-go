# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.17.3

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:5@sha256:f00fa0759fd02737867f47b67bc239aaf8b76b1bfcaf200f735d81b96358a8e0

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
