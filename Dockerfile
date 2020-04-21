FROM renovate/buildpack:1@sha256:aa28e984ed1a4cae5c2bb051e341637020951de5c199ff6de851a3f090cdb020

# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.14.2
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
      org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
