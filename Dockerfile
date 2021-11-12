# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.17.3

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:5@sha256:9f2e303076e5758bd4e30be4bd28ecd4ee5b4512deb68cc8887a2ba5c5746919

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
