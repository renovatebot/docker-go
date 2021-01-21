#--------------------------------------
# Ubuntu base image to use
#--------------------------------------
ARG FLAVOR=latest

#--------------------------------------
# renovate latest version tag
#--------------------------------------

# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.15.7

FROM renovate/buildpack:2-golang@sha256:ce0d8641e4bdc0fdeb2b5197185698331ee5b79836172d04edae1d674352fb5b as base-latest
FROM renovate/buildpack:2-golang-bionic@sha256:c8fe29b51fcf63e9eb4da471fc47700b1821c592fcc81d0f6760dfd80375a46d as base-bionic
FROM renovate/buildpack:2-golang-focal@sha256:f76044925e6d00ddd82ebdf85377d9d1b185d1943a48a42ed6e2a189f8847642 as base-focal

#--------------------------------------
# Image: final
#--------------------------------------
FROM base-${FLAVOR}

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
