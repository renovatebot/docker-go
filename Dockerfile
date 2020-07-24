# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.14.6

FROM renovate/buildpack:2-golang@sha256:3e314dfcee2e1cb4ced08fb2523494d075a3b6a88cafa30f15a6edcb66908dfa

RUN install-apt bzr mercurial

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
      org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
