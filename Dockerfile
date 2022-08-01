# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.18.5

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:72043b5318d6876dda202be77dd7025ad9305b347f1c275a4ed4b028774b2caf

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
