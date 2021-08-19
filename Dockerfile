# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.17.0

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:5-golang@sha256:2973b4a3e4e67b79bec542d3e81b80b9b82d83e18a6860876fc2a775556516da

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
