# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.18.1

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:2121883488725eb2fc90b9c2886b2a7e21d27054c4ee6f671667b9a029b3722d

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
