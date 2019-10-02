FROM renovate/base@sha256:46ea1196178f0bc0a3c54e2d7ee701ab7169605788b2d7f07ff4f7267670bc45

USER root

RUN apt-get update && apt-get install -y wget git bzr mercurial && apt-get clean

ENV GOLANG_VERSION 1.13

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
