# ------------------------------------------------------------------------------------------------------

FROM netdata/wget:latest AS download

ARG authzed_version="v1.1.0"
ENV SECS=10
RUN wget -O /tmp/openapi-spec.json "https://raw.githubusercontent.com/authzed/authzed-go/refs/tags/${authzed_version}/proto/apidocs.swagger.json"

# ------------------------------------------------------------------------------------------------------

FROM openapitools/openapi-generator-cli:v7.9.0 AS java-restclient

COPY --from=download /tmp/openapi-spec.json /tmp/openapi-spec.json

RUN mkdir -p /tmp/build/java-restclient
WORKDIR /tmp/build/java-restclient

ARG java_version="17"
ARG authzed_version="v1.1.0"
ARG artifact_version="0.0.0"

RUN bash /usr/local/bin/docker-entrypoint.sh \
        generate \
        -g java \
        -i /tmp/openapi-spec.json \
        -o "/tmp/build/java-restclient" \
        -p "groupId=com.ewerk.spicedb" \
        -p "artifactId=authzed-http-client-restclient" \
        -p "artifactVersion=${java_version}-${authzed_version}-${artifact_version}" \
        -p "artifactDescription=Auto generated SpiceDB OpenAPI HTTP client based on Spring RestClient." \
        -p "apiPackage=com.ewerk.spicedb.authzed.http.client" \
        -p "bigDecimalAsString=true" \
        -p "dateLibrary=java8" \
        -p "developerOrganization=EWERK Digital GmbH" \
        -p "developerOrganizationUrl=https://ewerk.com" \
        -p "library=restclient" \
        -p "licenseName=Apache License v2" \
        -p "scmUrl=https://github.com" \
        -p "scmConnection=scm:git:git@github.com:openapitools/openapi-generator.git" \
        -p "scmDeveloperConnection=scm:git:git@github.com:openapitools/openapi-generator.git"

# ------------------------------------------------------------------------------------------------------

FROM scratch AS artifacts

LABEL org.opencontainers.image.authors="info@ewerk.com"

COPY --from=java-restclient /tmp/build/java-restclient /java-restclient
