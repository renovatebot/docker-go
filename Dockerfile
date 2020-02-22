FROM renovate/base@sha256:bd80fcf8144d9f5b6cadd03a1e56e7d11cde83a29c31181845f33e2fb275d296

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
