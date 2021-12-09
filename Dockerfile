# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.17.5

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:5@sha256:af1cfb539fe81d30cfdb247069f912c411fcd7fb1b505d86afa4c94f955462a0

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
