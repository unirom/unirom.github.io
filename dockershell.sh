#!/bin/sh

ROOT=$(dirname $0)
CWD=$(pwd)
cd $ROOT
ROOT=$(pwd)
cd $CWD

docker pull squidfunk/mkdocs-material
docker run -p 8000:8000 --rm -t -i -w/project${CWD#$ROOT} -v "${ROOT}:/project" -u `id -u`:`id -g` squidfunk/mkdocs-material
