FROM renovate/buildpack:1@sha256:e2e416bf17d2e58a8a6042a15dcb559048b11bc5e3143b7c7a33d38e01d8236a

# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.14.2
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
      org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
