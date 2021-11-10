# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.17.3

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:5@sha256:73ebcce84f33d61a25cdd83de4ec448f9fcd37a8cefc38148b51757545b02dcd

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
