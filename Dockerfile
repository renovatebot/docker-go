# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.17.7

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:0708199137efd4f0e5d639cfe3398ec557484e07645c3b53a0ea8bbbc75b2330

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
