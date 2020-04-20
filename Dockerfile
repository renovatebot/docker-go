FROM renovate/buildpack:1@sha256:7e28ef186596dc293af15d6c63febf1e424c3e832702864944b498b3050cac52

# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.14.2
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
      org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
