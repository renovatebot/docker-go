# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.17.2

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:5@sha256:27f48b86256ee2067ac3b3f386a96cdb878b7e541dec2ecf94035bfc89b4464e

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
