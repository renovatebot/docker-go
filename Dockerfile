# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.17.1

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:5@sha256:a7cc6aca4805912d0ff7728328714f5594992909f788f308795d279d64e88502

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
