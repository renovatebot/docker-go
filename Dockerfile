# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.18.2

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:fd3ecf7756539161dcc747890f7485c03284abed0d5b991b02926266f1f8e766

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
