# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.19.1

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:c1e1eb6659fc36d40f980038e27bb4368ddbbf6536e2a6c941750a7713789fde

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
