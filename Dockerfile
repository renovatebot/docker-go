# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.18.3

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:b5a48747676645f972871e7e5277f3fed2d7d5a3df261c6a8238e6a8cf667d06

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
