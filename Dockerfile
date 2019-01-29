FROM renovate/base@sha256:38271d5feac6ba7b16e75e5af90ab22e6ecacbc2fad927ca0c5baaa253437b62

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
