FROM renovate/buildpack@sha256:7e28ef186596dc293af15d6c63febf1e424c3e832702864944b498b3050cac52

ENV GOLANG_VERSION=1.14.2

RUN /usr/local/build/golang.sh

USER 1000