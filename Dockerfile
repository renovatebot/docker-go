# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.19.0

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:1922ea7accc3245856ccfed61c2bd37962d510eb6216a86d69ecebc029bfe66b

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
