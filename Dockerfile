# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.17.0

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:5-golang@sha256:63af92ace70c4080b9b9ba4d08b84ae47045d2d68383a7bdedda1686bccb4bb7

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
