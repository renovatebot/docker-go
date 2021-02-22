# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.16.0

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:4-golang@sha256:a725a8de87c9c866d7c324153427ba8b8e4822070b9e5347a6a399ae8e53b935

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
