# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.15.3

FROM renovate/buildpack:2-golang@sha256:c4ff8a1ac81d2189021fd5b85457befd3268499be29a5c4187cfbfbd8c6657f8

RUN install-apt bzr mercurial

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
      org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
