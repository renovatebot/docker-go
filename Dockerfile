# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.17.7

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:87830ff48019962135718f1998f1a76f4eef4cbdeeb7311e9861de93f405795c

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
