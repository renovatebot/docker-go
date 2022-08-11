# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.19.0

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:842260287a7117f2a326ef6fc0ec12e0abfdb502fc740b77c2dc5d6dfb0c1260

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
