#--------------------------------------
# Ubuntu base image to use
#--------------------------------------
ARG FLAVOR=

#--------------------------------------
# renovate latest version tag
#--------------------------------------

# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.15.5

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:2-golang${FLAVOR}

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
      org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
