# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.18.3

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:7bf16b76f1708fe26c557912c900b772febc4b50e3294d54c8bc37ccb60463c4

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
