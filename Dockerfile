#--------------------------------------
# Ubuntu base image to use
#--------------------------------------
ARG FLAVOR=latest

#--------------------------------------
# renovate latest version tag
#--------------------------------------

# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.15.7

FROM renovate/buildpack:2-golang@sha256:402df2884d4ba02dbe0dcd5e9904f7e2edfd42c76045120fbe55c5a96a020c79 as base-latest
FROM renovate/buildpack:2-golang-bionic@sha256:229662704d5943d8511a656ef4598c54c1f6c2d29c4ffed8c3376486055422cf as base-bionic
FROM renovate/buildpack:2-golang-focal@sha256:dacc9499a9e00f8e79f2f9a8a7ccf942a9415ca871d533bd23f988f5363e9319 as base-focal

#--------------------------------------
# Image: final
#--------------------------------------
FROM base-${FLAVOR}

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
