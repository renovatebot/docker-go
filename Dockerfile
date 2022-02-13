# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.17.7

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:3f55c68ce0b2ced7cad85eff7d421abf54794c2578bcaefd2323327cf34f2d55

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
