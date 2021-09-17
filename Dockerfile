# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.17.1

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:5@sha256:294df2d53937fb46b94ff9e2b611d89bd8d1f8574fa9711ea09221684f1ed7e6

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
