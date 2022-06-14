# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.18.3

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:df948b6a14512b7b473b1174b589cd6f8d7472b710b29c313264fd259b7fb23a

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
