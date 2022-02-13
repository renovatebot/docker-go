# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.17.7

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:4cb8ef72833ab7ab249b45f5ba1253cefec17222d9e9fc348015d9261f42cc9f

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
