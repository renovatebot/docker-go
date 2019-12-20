FROM renovate/base@sha256:3bee86a86c0bb4d59834318935e503f9b2f41f4737e4fe764f697c7915150988

USER root

RUN apt-get update && apt-get install -y wget git bzr mercurial && apt-get clean

ENV GOLANG_VERSION 1.13

RUN wget -q -O go.tgz "https://golang.org/dl/go${GOLANG_VERSION}.linux-amd64.tar.gz" && \
	tar -C /usr/local -xzf go.tgz && \
	rm go.tgz && \
	export PATH="/usr/local/go/bin:$PATH"

ENV GOPATH /go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH

RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
WORKDIR $GOPATH

ENV CGO_ENABLED=0
ENV GOPROXY=direct GOSUMDB=off

USER ubuntu
