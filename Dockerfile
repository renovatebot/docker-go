# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.18.0

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:b623437ef365744b7d4b31a259205b46e17612f1ec3f3153f313cd783ed70dfb

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
