# authzed-http-client

[![Build main](https://github.com/ewerk/authzed-http-client/actions/workflows/main-branch-build.yml/badge.svg)](https://github.com/ewerk/authzed-http-client/actions/workflows/main-branch-build.yml)

## 🚀 Introduction

The repository provides a building facade for generating HTTP clients for the [SpiceDB](https://authzed.com/spicedb) REST API.
It currently is in incubating/showcase state.
The target is to provide pre-packaged HTTP clients for various languages.
The build infrastructure is backed by the [OpenAPI Generator CLI]().

## Supported languages

The following languages are currently supported.

- [x] `Java`
- [ ] `Typescript`
- [ ] `Python`
- [ ] `C#`

## 👩‍💻Local builds

The full automation flow is not yet clear. For the moment, a simple shell script is provided to 
build the client(s) locally using a Docker based stack.

```bash
# run the client generation locally
./local-build.sh
```

## ✅ Open points

- [ ] Typescript build
- [ ] Python build
- [ ] C# build
- [ ] main build GitHub actions
- [x] build badge
