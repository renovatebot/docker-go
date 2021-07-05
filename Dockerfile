# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.16.5

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:5-golang@sha256:8079780bccc1c3b871fc93ac4500667bad46367b1874a5a4f571dbab5226850a

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
