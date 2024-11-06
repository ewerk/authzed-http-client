# authzed-http-client

[![main](https://github.com/ewerk/authzed-http-client/actions/workflows/main-build.yml/badge.svg)](https://github.com/ewerk/authzed-http-client/actions/workflows/main-build.yml)

## 🚀 Introduction

The repository provides a building facade for generating HTTP clients for the [SpiceDB](https://authzed.com/spicedb)
REST API. It currently is in incubating/showcase state. The target is to provide pre-packaged HTTP clients for 
various languages. The build infrastructure is backed by the [GitHub Actions](https://docs.github.com/en/actions) 
composed around [OpenAPI Generator CLI]().

## 📒 Documentation

The full documentation can be found on the [projects GitHub pages](https://ewerk.github.io/authzed-http-client).

## ✅ Open points

The following list is just high level reminder.

- [x] Build badge
- [x] Missing community standards
    - [x] contributing guide
    - [x] security policy
- [x] PoC
    - [x] Semver compliant release versioning
    - [x] Publish Java clients snapshots
    - [x] Workflow job or step templates
- [ ] Main build GitHub workflow(s)
    - [x] Java build
    - [x] Typescript build
    - [ ] Python build
    - [ ] C# build
- [ ] Release build GitHub workflow(s)
    - [ ] Java
    - [ ] Typescript
    - [ ] Python
    - [ ] C#
- [x] Move most part of README docs to GitHub pages
- [ ] Transfer open tasks to enhancement issues
