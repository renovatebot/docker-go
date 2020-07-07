# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.14.4

FROM renovate/buildpack:2-golang@sha256:0c84f4f55591a0ab1905e5726039839e311062f6331f505a3a2097e99ff5d81d

RUN install-apt bzr mercurial

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
      org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
