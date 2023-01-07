#!/bin/bash
version=$1
[ -z $version ] && version=0.1 && echo "\nset defaul version 0.1\n"

docker build --no-cache -t crissalvarezh/portfolio:$version .

docker tag crissalvarezh/portfolio:$version crissalvarezh/portfolio:latest

docker push crissalvarezh/portfolio:$version
docker push crissalvarezh/portfolio:latest
