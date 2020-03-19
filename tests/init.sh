#!/bin/bash

init_fixtures () {
    rm -rf ./.tmp/
    mkdir -p ./.tmp/
    cp -R ./tests/__fixtures__/* ./.tmp/
    chown -R 1000:0 ./.tmp/
}

run_test(){
    docker run --rm -t -v $(pwd)/.tmp/$1:/src -w /src ${DOCKER_REPO} go ${@:2}
}