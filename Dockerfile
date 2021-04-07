# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.16.3

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:5-golang@sha256:50135d1dc3b77953bd0538977960011d2cbb7060c3b299cd2ec8d31d1c84a545

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
