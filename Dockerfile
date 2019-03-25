FROM renovate/base@sha256:67f33a78af595f62d1aeb717bbc0d5187cbe5faeb83dcfd98a9d0131a014eaeb

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

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
