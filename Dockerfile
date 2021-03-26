# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.16.2

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:4-golang@sha256:4d22d5974da3f24eb6a5615456fc8fdf47de27861336ca913ae0a1c67365f3d5

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
