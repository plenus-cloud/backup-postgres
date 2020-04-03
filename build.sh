#!/bin/sh

TAG=backup-postgres:1.0.3

# build locally
docker build -t ${TAG} .
