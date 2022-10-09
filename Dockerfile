# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.19.2

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:0408248ee016ddbb2345a54f54088fecfe30d30c15f96b7a429a395b2139f737

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
