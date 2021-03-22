# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.16.2

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:4-golang@sha256:a81de3d8dabf90104cc7d27563aae6d816eed8025b1cb78cec12b00764c360da

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
