#!/usr/bin/env bash

echo "Generation started..."

WORKDIR=$(pwd)

echo "Workdir: ${WORKDIR}"

rm -rf "${WORKDIR}/build"
echo "Cleaned workdir"

docker build --no-cache --output=./build -f ./src/local-builds/Dockerfile . || exit 1

echo "Building java-restclient package"
cd "${WORKDIR}/build/java-restclient" || exit 1
chmod u+x ./gradlew
./gradlew build publishToMavenLocal

echo "Building typescript-fetch package"
cd "${WORKDIR}/build/typescript-fetch" || exit 1
npm install
npm run build

echo "Building python package"
cd "${WORKDIR}/build/python-urllib3" || exit 1
# npm install
# npm run build

echo "Done."
