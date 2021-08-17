# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.17.0

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:5-golang@sha256:f7fb0bdf9da010e612fb1273ffb368040b5785c852a768cba51c05dc3228059a

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
