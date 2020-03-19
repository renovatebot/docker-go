FROM renovate/base@sha256:175e2d040a8dbd7900d815621e386efed1ca9c4f40e5aaf1902d4632f1bf645f as base

FROM amd64/golang:1.14.0@sha256:fc7e7c9c4b0f6d2d5e8611ee73b9d1d3132750108878517bbf988aa772359ae4 as build


FROM base as final

USER root

RUN apt-get update && apt-get install -y \
	bzr \
	mercurial \
	&& rm -rf /var/lib/apt/lists/*

COPY --from=build /usr/local/go /usr/local/go

ENV GOPATH /go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH

RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chown -R ubuntu:0 && chmod -R 775 "$GOPATH"
WORKDIR $GOPATH

ENV CGO_ENABLED=0
ENV GOPROXY=direct GOSUMDB=off

USER 1000
