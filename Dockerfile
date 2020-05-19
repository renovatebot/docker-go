# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.14.2

FROM renovate/buildpack:2-golang@sha256:ddcf60dc257de249c2e3ff17608ba482962b948c59e84a5a0be88493ae73f8be

RUN install-apt bzr mercurial

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
      org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
