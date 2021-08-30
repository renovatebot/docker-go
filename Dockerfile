# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.17.0

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:5-golang@sha256:08a65071ff77e91776d03bd89124092f63fec47d18305e9a975aa82f64ebde21

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
