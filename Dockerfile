FROM renovate/buildpack@sha256:f8dcdf94d683cbeec33337c1787bbbdf7e0205269efb3a68df1b091a6c7c5710

ENV GOLANG_VERSION=1.14.2

RUN /usr/local/build/golang.sh

USER 1000