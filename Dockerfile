FROM renovate/buildpack:1@sha256:c14158942b964b13280672b69d55b7c59283b37bdc8804d3dfa3ff6211f9d17f

# renovate: datasource=docker depName=golang versioning=docker
ARG GOLANG_VERSION=1.14.2
RUN install-tool golang

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-go" \
      org.opencontainers.image.version="${GOLANG_VERSION}"

USER 1000
