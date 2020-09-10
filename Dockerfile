# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.15.2

FROM renovate/buildpack:2-golang@sha256:c98fe235cffe66bcccfa1d4f893eaecee767c602356b3fae58c29e5f14dd2dca

RUN install-apt bzr mercurial

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
      org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
