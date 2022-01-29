# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.17.6

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:c3d5d461cf1d9ad59814d308562b7fa879c23b00e709d672830a4fac69a0fca0

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
