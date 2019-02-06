FROM renovate/base@sha256:8cba78f1fc4d5b8d82dcb976cb25b8bef809ff07eb594cd821c5cbe594c9498b

USER root

RUN apt-get update && apt-get install -y wget git && apt-get clean

ENV GOLANG_VERSION 1.11.1

RUN wget -q -O go.tgz "https://golang.org/dl/go${GOLANG_VERSION}.linux-amd64.tar.gz" && \
	tar -C /usr/local -xzf go.tgz && \
	rm go.tgz && \
	export PATH="/usr/local/go/bin:$PATH"

ENV GOPATH /go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH

RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
WORKDIR $GOPATH

ENV CGO_ENABLED=0

USER ubuntu
