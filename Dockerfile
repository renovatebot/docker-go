# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.15.3

FROM renovate/buildpack:2-golang@sha256:76f30d8c4fdaef1e88e2b4598a63e0edf310beac0694c0d61bcab04fd45cadab

RUN install-apt bzr mercurial

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
      org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
