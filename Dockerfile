# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.17.0

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:5-golang@sha256:8ec6d255d716deebd1bfa3d2610f6ad269f4c5840a7048c8b3f2eb74e9174b57

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
