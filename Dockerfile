# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.15.2

FROM renovate/buildpack:2-golang@sha256:b713e00f916db6e4915ff4b61c8bd74b6825d8c71216174d74ed9d63ef962cbd

RUN install-apt bzr mercurial

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
      org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
