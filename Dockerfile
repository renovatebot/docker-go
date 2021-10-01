# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.17.1

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:5@sha256:91fb83a041145764dd820afa70d9600bbea5e45e0c5e47dd3e00902d4286581c

ARG GOLANG_VERSION
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
  org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
