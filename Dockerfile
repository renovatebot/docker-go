# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.16.1

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:4-golang@sha256:dfd54ed0cb54b1698cb4e3649a7fc6750e0f431e5a4e0e5c32f75c276f695b8c

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
