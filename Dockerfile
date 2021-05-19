# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.16.4

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:5-golang@sha256:31267341877b790266da15004e02ba7dadedfba73c908b01480b0a5ecccdd808

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
