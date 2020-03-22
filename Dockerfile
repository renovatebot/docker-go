FROM renovate/ubuntu:18.04@sha256:25e179f036bd29cacc391f1139574312d5d0304b54031b8fb415a931860f6f49

USER root

RUN apt-get update && apt-get install -y \
	wget \
	bzr \
	mercurial \
	&& rm -rf /var/lib/apt/lists/*

ENV GOLANG_VERSION 1.14

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
