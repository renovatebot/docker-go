# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.16.6

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:5-golang@sha256:adda86eaf66858178291a6f746696ba3f7f17b07236139ecbea57283ab27feb9

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
