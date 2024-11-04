# authzed-http-client

[![Build main](https://github.com/ewerk/authzed-http-client/actions/workflows/main-branch-build.yml/badge.svg)](https://github.com/ewerk/authzed-http-client/actions/workflows/main-branch-build.yml)

## 🚀 Introduction

The repository provides a building facade for generating HTTP clients for the [SpiceDB](https://authzed.com/spicedb)
REST API.
It currently is in incubating/showcase state.
The target is to provide pre-packaged HTTP clients for various languages.
The build infrastructure is backed by the [OpenAPI Generator CLI]().

---

## Supported languages

The following languages are currently supported.

- [x] `Java`
- [ ] `Typescript`
- [ ] `Python`
- [ ] `C#`

---

## 👩‍💻Local builds

The full automation flow is not yet clear. For the moment, a simple shell script is provided to
build the client(s) locally using a Docker based stack.

```bash
# run the client generation locally
./local-build.sh
```

ℹ️ The local build approach is mostly going to be archived once the automated workflow is fully complete.

---

## 🤖 Automated builds

The builds of the HTTP clients in various languages is purely implemented by using GitHub
action workflows, main backed
by [openapi-generators/openapitools-generator-action@v1](https://github.com/marketplace/actions/generate-client-library-w-the-openapitools-generator).

### Java

#### Snapshots

The Java client library build from the `main` branch are deployed to the GitHub Packages repo.
The snapshots can be seen within
the [packages view](https://github.com/orgs/ewerk/packages?repo_name=authzed-http-client) on GiHub.

The snapshots should be immediately available to your build, e.g. by using:

```xml

<dependency>
  <groupId>com.ewerk.spicedb</groupId>
  <artifactId>authzed-http-client-restclient</artifactId>
  <version>17-v1.1.0-0.0.0-SNAPSHOT</version>
</dependency>
```

#### Releases

- [ ] t.b.d.

#### Usage

The client can be pretty much used as any HTTP client generated by OpenAPI generator.

ℹ️ The following example is taken from the generated coed and might be outdated,
as the generated `README.md` is not part of the Java packages.

```java

import com.ewerk.spicedb.authzed.http.*;
import com.ewerk.spicedb.authzed.http.auth.*;
import com.ewerk.spicedb.authzed.http.model.*;
import com.ewerk.spicedb.authzed.http.client.ExperimentalServiceApi;

public class ExperimentalServiceApiExample {

  public static void main(String[] args) {
    var defaultClient = new ApiClient();
    defaultClient.setBasePath("http://localhost");

    var apiInstance = new ExperimentalServiceApi(defaultClient);
    var body = new V1BulkCheckPermissionRequest(); // V1BulkCheckPermissionRequest | NOTE: Deprecated now that BulkCheckPermission has been promoted to the stable API as \"CheckBulkPermission\".

    try {
      varresult = apiInstance.experimentalServiceBulkCheckPermission(body);
      System.out.println(result);
    } catch (HttpStatusCodeException cause) {
      System.err.println("Exception when calling ExperimentalServiceApi#experimentalServiceBulkCheckPermission");
      System.err.println("Status code: " + cause.getStatusCode().value());
      System.err.println("Reason: " + cause.getResponseBodyAsString());
      System.err.println("Response headers: " + cause.getResponseHeaders());
      e.printStackTrace();
    }
  }
}

```

---

## ✅ Open points

The following list is just high level reminder.

- [x] Build badge
- [ ] Missing community standards
    - [ ] contributing guide
    - [ ] security policy
- [ ] PoC
    - [ ] Semantic versioning
    - [x] Publish Java clients snapshots
    - [x] Workflow job or step templates
- [ ] Main build GitHub workflow(s)
    - [ ] Java build
    - [ ] Typescript build
    - [ ] Python build
    - [ ] C# build
- [ ] Release build GitHub workflow(s)
    - [ ] Java
    - [ ] Typescript
    - [ ] Python
    - [ ] C#
