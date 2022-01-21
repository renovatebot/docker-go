# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.17.6

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:5@sha256:5520467fb0aea16c8b404fcf10a08ac9a3dbe57cffbe6a8b5ba3e71a05dcfc63

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
