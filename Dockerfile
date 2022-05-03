# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.18.1

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:caa20ff3672cee67fca6a1de14bbe68cec26eef952a70aa4b70978a6b002f56c

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
