---
id: building-locally
title: Building locally
toc: false
layout: default
---

# 👩‍💻Building locally

The full automation flow is not yet clear. For the moment, a simple shell script is provided to
build the client(s) locally using a Docker-based stack.

```bash
# run the client generation locally
# make sure you run the command from the project root directory
./src/local-builds/generate.sh
```

> ℹ️ 
> The main intention for the local builds is to support local dev and testing.
> The _real_ source of truth are the GitHub actions.
