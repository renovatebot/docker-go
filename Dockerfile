# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.18.0

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:5645caa011659c7d73eab3a9b40079ce1817757b96b2fcd397641fe2f4debb56

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
