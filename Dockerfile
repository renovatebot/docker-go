# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.18.0

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:810e591441c698bbab3047bf875b812c98b42a19a94b9f9651a5355e2a7462d3

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
