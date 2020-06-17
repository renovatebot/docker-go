# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.14.4

FROM renovate/buildpack:2-golang@sha256:5958022fed5b8dba8aa2a785c77186048ce1db8f366f0ba43acba45d7e19d49a

RUN install-apt bzr mercurial

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
      org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
