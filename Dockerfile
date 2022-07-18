# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.18.4

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:01be8ee0eb03159a1a7ca4043f1156b39183c67b8b29bf0695398decd4165ee7

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
