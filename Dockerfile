# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.18.0

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:e74995e980b0c92a878bbed8d8de3a19a3f7138a2e9fd4fc19ececbb28add033

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
