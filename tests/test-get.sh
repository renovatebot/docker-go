#!/bin/bash
set -e

. ./tests/init.sh

init_fixtures

run_test simple get -d ./...