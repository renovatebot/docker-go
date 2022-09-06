# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.19.0

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:bdd2fc5f9567c472697e2bd21f8079bf259e0813e8873374f9f80667ae8f983c

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
