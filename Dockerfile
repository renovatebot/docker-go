#--------------------------------------
# Ubuntu base image to use
#--------------------------------------
ARG FLAVOR=latest

#--------------------------------------
# renovate latest version tag
#--------------------------------------

# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.15.6

FROM renovate/buildpack:2-golang@sha256:46ff0407a92e88527cfb59066e971467d8f3d0f4adfa39680de9a5e21fd51f43 as base-latest
FROM renovate/buildpack:2-golang-bionic@sha256:c9b108fcf128bc5d8258aaecdedf18cbae6f554750a279e6a993ee90ec973963 as base-bionic
FROM renovate/buildpack:2-golang-focal@sha256:62a2f1aa1fdcf31e2728eaa31799d4227e12452db49f21b6d199974f65d76387 as base-focal

#--------------------------------------
# Image: final
#--------------------------------------
FROM base-${FLAVOR}

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
