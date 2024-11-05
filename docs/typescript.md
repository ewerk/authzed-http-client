---
id: typescript
title: Typescript
toc: false
layout: default
---

# Typescript

## Version policy

The following version policy will be applied to the Typescript client packages:

```
# pattern
$artifactVersion-$javaVersion-$spicedbVersion[]

# parts
$artifactVersion  := semver (major.minor.patch) of the artifact determined from repo tags
$javaVersion      := Java JDK version (from build matrix)
$spicedbVersion   := SpiceDB version (from spicedb.version file)
$snapshot         := Optional NPM snapshot classifier, format '-SNAPSHOT.$timestamp'

# release example
1.0.1-21-v1.1.0

# snapshot example
0.0.1-21-v1.1.0-SNAPSHOT.202411050722
```

## Snapshots

The Typescript clients created from the `main` build will be published to [GitHub NPM registry]() as snapshots.
They are available for manual download from the project 'Packages' section.

The snapshot packages can be installed to your project as usual:

```bash
# install snapshot via npm
# make sure you have configured GitHub NPM packages repo properly to pull from
npm install @ewerk/authzed-http-client-restclient@0.0.0-21-v1.1.0-SNAPSHOT.202411050846 --save
```
## Releases

> ⚠️ Currently, release pipelines are missing and therefore no packages are published to public NPM registry.
