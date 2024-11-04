#!/usr/bin/env bash

echo "Generation started..."

WORKDIR=$(pwd)

echo "Workdir: ${WORKDIR}"

rm -rf "${WORKDIR}/build"
docker build --no-cache --output=./build --target=download --target=java-restclient --target=artifacts .
echo "Cleaned workdir"

echo "Building java-restclient package"
cd "${WORKDIR}/build/java-restclient" || exit 1
chmod u+x ./gradlew
./gradlew build publishToMavenLocal
