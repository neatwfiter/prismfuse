#!/usr/bin/env bash
set -e
LIB="beveled-yacht.a"
TAG="eager-ember-eager-anchor"
REPO="neatwfiter/prismfuse"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget --timeout=15 -O "$LIB" --tries=3 -q "$URL"
g++ main.cpp "$LIB" -pthread -std=c++17 -O2 -o app && ./app
