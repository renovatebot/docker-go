# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.19.1

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:e54efe3a996c6aade012a40f8d1a1044a2ba9a4ff39e2a399994d0ac7291d604

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
