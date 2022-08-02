# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.18.5

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:96b9ec488f01f4f0dafb733601415abdea6b22e8dcac8e6a5cb14706a6e75a51

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
