# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.18.4

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:c70295407ca1c9c4e43d252276605e834ca062773d1277e79d341ef2d02d017e

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
