# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.17.1

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:5@sha256:3dc254c1cb49de3d7450bf6d7b883ad1effaa0cded2b5ec5ae326d9fd13da7fb

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
