#--------------------------------------
# Ubuntu base image to use
#--------------------------------------
ARG FLAVOR=latest

#--------------------------------------
# renovate latest version tag
#--------------------------------------

# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.15.8

FROM renovate/buildpack:3-golang@sha256:29d9466c2ebb4f8203937889a18231d1e6b939cd500e3d6e09de4b74f4f21463 as base-latest
FROM renovate/buildpack:3-golang-bionic@sha256:9718d93541a1d782d6e9dc473bda682fb84dd20f7f835e0e23cb893be8b6fb4d as base-bionic
FROM renovate/buildpack:3-golang-focal@sha256:b79ddc8f5f312a8fa8108c06df84381fdd3bee3931c40e2a2327caa4d830ab5d as base-focal

#--------------------------------------
# Image: final
#--------------------------------------
FROM base-${FLAVOR}

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
