# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.16.6

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:5-golang@sha256:b40981f9f6fd425621c9eef230bb7e61d267331824613494b3471c5502555ada

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
