# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.15.5

FROM renovate/buildpack:2-golang@sha256:e143bdfd8e1742988c8d876254e926b688b077a0e31c74d8c97a8388ff8dff96

RUN install-apt bzr mercurial

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
      org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
