# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.17.8

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:3a6e579bc4384900d23393ffce71ed623fedfea41de341fd4124b271fc79558e

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
