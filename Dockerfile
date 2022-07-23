# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.18.4

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:012bd9fa4770c60f3481cb7ad4db622344dfa989dfa2c4264f39fce9b1a5d1c4

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
