# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.19.0

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:ae02fc267362653858eb05e717e13778baa8b63e96123ec4d7a59abd77bbee49

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
