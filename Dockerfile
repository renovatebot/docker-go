# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.16.2

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:4-golang@sha256:77cbb1093c4e3de7e8c9a5d36e4699cb7e381b842473abf4e3c3f3c5fa974a72

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
