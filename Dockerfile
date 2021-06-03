# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.16.5

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:5-golang@sha256:360f01b2b8a5bf70c5704e092e86d0203f6232ba3a2938960ccfc24e9425d553

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
