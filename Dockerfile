FROM renovate/buildpack:1@sha256:c6f6576e75d493c4a1ff50eb620cbd16ac38221f8c705ed5be3144d940e20d72

# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.14.2
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
      org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
