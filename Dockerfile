# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.16.3

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:5-golang@sha256:699a2ed91942fe55c91d69fd6d307dd72cf5c3da2f67385ff9798943836b6eb8

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
