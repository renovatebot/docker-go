# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.16.2

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:4-golang@sha256:cd013411c9766b7747705ef24a3af4457452dd0b94350729f400f049442a7f73

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
