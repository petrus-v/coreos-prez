#!/bin/bash

export TRAVIS_BRANCH="master"
export TRAVIS_PULL_REQUEST=false
export TRAVIS_BUILD_DIR=$(pwd)
export BUILD_BIN=${TRAVIS_BUILD_DIR}/ci/build.sh
export DEST_DIR=$(mktemp -d)

echo "TRAVIS_BRANCH = ${TRAVIS_BRANCH}"
echo "TRAVIS_PULL_REQUEST = ${TRAVIS_PULL_REQUEST}"
echo "TRAVIS_BUILD_DIR = ${TRAVIS_BUILD_DIR}"
echo "BUILD_BIN = ${BUILD_BIN}"
echo "DEST_DIR = ${DEST_DIR}"

"${BUILD_BIN}"

cd "$DEST_DIR"
python -m SimpleHTTPServer 8000

rm -r "${DEST_DIR}"