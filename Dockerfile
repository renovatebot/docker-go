# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.16.6

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:5-golang@sha256:60d6b9cd86fcb7e9a5a231c6e33c9b206f84f2419d4ff23d0b7168cb9d48eb14

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
