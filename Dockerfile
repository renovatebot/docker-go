# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.16.4

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:5-golang@sha256:8426c84c77eced1a533eef908ec951c39194dc823a0a8946d9b440ddbd2c7cfd

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
