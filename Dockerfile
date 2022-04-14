# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.18.1

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:2f71076c04e6835621d4775827c024d7a219f65a957cc38a5dcb7305f0bf0bad

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
