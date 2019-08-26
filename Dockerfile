FROM renovate/base@sha256:7f0f4a49da8683be57a058b7784faa8e7fa38eddf6f42112ba919fe75c4947be

USER root

RUN apt-get update && apt-get install -y wget git bzr && apt-get clean

ENV GOLANG_VERSION 1.12.9

RUN wget -q -O go.tgz "https://golang.org/dl/go${GOLANG_VERSION}.linux-amd64.tar.gz" && \
	tar -C /usr/local -xzf go.tgz && \
	rm go.tgz && \
	export PATH="/usr/local/go/bin:$PATH"

ENV GOPATH /go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH

RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
WORKDIR $GOPATH

ENV CGO_ENABLED=0
ENV GO111MODULE=on

USER ubuntu
