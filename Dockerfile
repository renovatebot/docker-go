FROM renovate/buildpack:1@sha256:0fa21d11578682fb27ab2abdf885854ae4ce4fe05a411622c371adccef0cd755

RUN install-apt bzr mercurial

# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.14.2
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
      org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
