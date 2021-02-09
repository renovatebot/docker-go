#--------------------------------------
# Ubuntu base image to use
#--------------------------------------
ARG FLAVOR=latest

#--------------------------------------
# renovate latest version tag
#--------------------------------------

# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.15.8

FROM renovate/buildpack:3-golang@sha256:7c26081091d8f564b173ea8d270e278bafda53c3a32b9df6135771053e88aad6 as base-latest
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
