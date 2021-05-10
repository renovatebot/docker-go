# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.16.4

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:5-golang@sha256:74352f7942d4067561a6f36f31e71d342d8cb16f2affa9e139d35d50ce7feb66

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
