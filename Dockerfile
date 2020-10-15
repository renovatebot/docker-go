# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.15.3

FROM renovate/buildpack:2-golang@sha256:a16595a09f23d3d99ef30f92e4205aa72d0cf88834118fde54ea8c2cbaf4543c

RUN install-apt bzr mercurial

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
      org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
