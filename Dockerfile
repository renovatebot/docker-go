# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.17.6

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:f8f23f178cb2ddc34519685850658a3598288b5cc526de2c56699b28c3169a17

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
