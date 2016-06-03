#!/bin/bash

set -e

DEST_DIR=${DEST_DIR:-"${HOME}/build_doc"}

if [ "$TRAVIS_BRANCH" = "master" ] && [ "$TRAVIS_PULL_REQUEST" = false ]; then

    cd "${TRAVIS_BUILD_DIR}"
    rev=$(git rev-parse --short HEAD)

    cd "$DEST_DIR"
    git init
    git config user.name "Travis CI"
    git config user.email "pverkest@anybox.fr"
    git remote add upstream "git@github.com:${TRAVIS_REPO_SLUG}.git"
    git fetch upstream
    git reset upstream/gh-pages
    git add -A .
    git commit -m "Rebuild slides at ${rev}"
    git push upstream HEAD:gh-pages
fi
