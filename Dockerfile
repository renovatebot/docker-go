FROM renovate/base@sha256:35fba95cd19265a170a8cf80627bde161c7242aed6f314173ebd3777c2ce3d3f

USER root

RUN apt-get update && apt-get install -y wget git bzr && apt-get clean

ENV GOLANG_VERSION 1.12

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
