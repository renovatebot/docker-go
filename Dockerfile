FROM renovate/base@sha256:d26a51123d28c40e8ae59c58456f0d9c7203257e906a05262ef0729715b068f3

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
