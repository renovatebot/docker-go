#--------------------------------------
# Ubuntu base image to use
#--------------------------------------
ARG FLAVOR=latest

#--------------------------------------
# renovate latest version tag
#--------------------------------------

# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.15.8

FROM renovate/buildpack:4-golang@sha256:6c4c67ec88be0d98e97e1c7f595657736e63dcac6f0348506c6b25bce47817ab as base-latest
FROM renovate/buildpack:3-golang-bionic@sha256:1cb1d33ae6d905b01727eb9ca902fbe7ed1bc3a43a471d6efc94763a686f35e3 as base-bionic
FROM renovate/buildpack:3-golang-focal@sha256:64e5fb5a539b7f85941ec57f0757e6a164239a8d51fdbf40db35a98c96d45127 as base-focal

#--------------------------------------
# Image: final
#--------------------------------------
FROM base-${FLAVOR}

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
