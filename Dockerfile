# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.16.5

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:5-golang@sha256:0dd70aef75bfcb5693930964e3b2376c96b2a26b59e8369a921d9029da26eb49

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
