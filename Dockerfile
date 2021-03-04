# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.16.0

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:4-golang@sha256:1ef1d25ec254318230aeec6a6565f37cffcdf6b1e87553186cf2df8243b3906b

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
