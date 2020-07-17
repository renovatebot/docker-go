# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.14.6

FROM renovate/buildpack:2-golang@sha256:42d93caac4e31784e8cbbd58469cbfb75bdf2da7080242fc5bbe691370cb9ad6

RUN install-apt bzr mercurial

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
      org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
