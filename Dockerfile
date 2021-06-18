# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.16.5

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:5-golang@sha256:812b5eb3c85ad0fdf6914e18d0ac7b2dad643c8b1353d460f63e3741dcfc01b5

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
