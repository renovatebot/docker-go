# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.16.2

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:4-golang@sha256:ec5984beb309f46c778e6df2a08a84a214430c908cc45569c3bf4348675c2885

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
