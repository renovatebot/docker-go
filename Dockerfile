# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.14.2

FROM renovate/buildpack:2-golang@sha256:268727684f31574bcfb1b4af7a290143e52b7c9e30606fc62ed16a1a459a4819

RUN install-apt bzr mercurial

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
      org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
