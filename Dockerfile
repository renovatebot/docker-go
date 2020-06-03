# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.14.4

FROM renovate/buildpack:2-golang@sha256:5acd3dc00d324a18688978e4179d358e743b84f0af0cf26e7cc51d922836d551

RUN install-apt bzr mercurial

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
      org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
