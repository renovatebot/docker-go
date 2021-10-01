# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.17.1

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:5@sha256:4f0d2d1489f5f46bc1eaa662935af526e028e9498eb57735938102683c21c811

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
