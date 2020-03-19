FROM renovate/base@sha256:175e2d040a8dbd7900d815621e386efed1ca9c4f40e5aaf1902d4632f1bf645f

USER root

RUN apt-get update && apt-get install -y \
	wget \
	bzr \
	mercurial \
	&& rm -rf /var/lib/apt/lists/*

ENV GOLANG_VERSION 1.14

ENV GOPATH /go
ENV PATH $GOPATH/bin:/home/ubuntu/go/bin:$PATH

RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
WORKDIR $GOPATH

USER ubuntu

RUN wget -q -O go.tgz "https://golang.org/dl/go${GOLANG_VERSION}.linux-amd64.tar.gz" && \
	tar -C /home/ubuntu -xzf go.tgz && \
	rm go.tgz
ENV CGO_ENABLED=0
ENV GOPROXY=direct GOSUMDB=off

RUN go version
