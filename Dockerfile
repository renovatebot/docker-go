# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.17.8

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:e115a3a99a368315362f15c8f1eb8a19b11ee7267e9cfe25c4933f5bbe43ebd3

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
