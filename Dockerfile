#--------------------------------------
# Ubuntu base image to use
#--------------------------------------
ARG FLAVOR=latest

#--------------------------------------
# renovate latest version tag
#--------------------------------------

# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.15.8

FROM renovate/buildpack:2-golang@sha256:85f249602afcc10145b24c89b7d9835a0b40ab8904f20775435c07f298a9e783 as base-latest
FROM renovate/buildpack:2-golang-bionic@sha256:6f8d5ecb1e5f80cd3b4fc2a3cd044d2901084eb23b303bdcdafe8123717d4469 as base-bionic
FROM renovate/buildpack:2-golang-focal@sha256:33b09f24ad6d44b78fcb3aa11dbbbd26ec1ae6a2171ee80d46be5aa1990a6ce0 as base-focal

#--------------------------------------
# Image: final
#--------------------------------------
FROM base-${FLAVOR}

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
