# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.19.2

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:8b74cb13f61c3e785a61b65fca19998df24158b5b35cd42518b173b623e0fb32

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
