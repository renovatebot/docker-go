# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.16.6

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:5-golang@sha256:1eadb376a059031c63584a4e13353ec0683e134dcce5fa7f836feb06857e4aea

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
