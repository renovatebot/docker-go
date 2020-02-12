FROM renovate/base@sha256:3bd934a4709db3b91e32f005c6783b5407b2fac28be08da6b5c6cf91e4b2ec60

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
