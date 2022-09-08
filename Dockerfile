# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.19.1

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:8173ffb647449807ce52096115a2ae9f2078e7d92a5a2883cf4846e3fcabca3c

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
