# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.14.3

FROM renovate/buildpack:2-golang@sha256:e1ac6499a9f5a7a68c667e99e27c609232b3ab696af7f67e36d3c9614660e543

RUN install-apt bzr mercurial

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
      org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
