# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.18.3

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:5341b837a42cd0feac1897b3477d79ec910c6f806dd8d3bfbd69efda723b164b

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
