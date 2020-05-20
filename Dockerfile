# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.14.3

FROM renovate/buildpack:2-golang@sha256:d7dcdabdb370cfa4bd324d0d30f013b41cddb87f96ebd4f96bb26926a97c18d1

RUN install-apt bzr mercurial

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
      org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
