# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.16.3

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:4-golang@sha256:7b078d7186e5c189958400dfa47c717485793b27719d9030d5b51650fbb1ea77

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
