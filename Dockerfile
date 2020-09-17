# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.15.2

FROM renovate/buildpack:2-golang@sha256:21964124c4855ec9e3823509ea9e34480f1bb1f7988f8f0efe3f2e9116f8a3a9

RUN install-apt bzr mercurial

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
      org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
