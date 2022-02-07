# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.17.6

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:fa5ad9fcfbdf0f1833d53f6a70986658fb8083d5465058ed0eb75d30ad5e97b6

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
