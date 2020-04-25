FROM renovate/buildpack:1@sha256:1778d9326950d56e676e52770904b91ee966f39457604f3e822eac1be5597882

# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.14.2
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
      org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
