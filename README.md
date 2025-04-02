# Specmatic Example Generation using Dictionary
Sample project to demonstrate example validation and generation using dictionary with Specmatic OpenAPI docker image

## Usage
### Get the latest Docker Image
```shell
docker pull znsio/specmatic-openapi:latest
```

### Use the interactive server to Generate, Validate and Fix Examples
```shell
docker run \
      -p 9001:9001 \
      -v "$PWD/specmatic-license.txt:/usr/src/app/specmatic-license.txt" \
      -v "$PWD/openapi.yaml:/usr/src/app/openapi.yaml" \
      -v "$PWD/specmatic.yaml:/usr/src/app/specmatic.yaml" \
      -v "$PWD/openapi_examples:/usr/src/app/openapi_examples" \
      -v "$PWD/openapi_dictionary.json:/usr/src/app/openapi_dictionary.json" \
      -e SPECMATIC_LICENSE_PATH=/usr/src/app/specmatic-license.txt \
      znsio/specmatic-openapi examples interactive --spec-file openapi.yaml
```
This would start the interactive server at `http://localhost:9001` where you can generate, validate and fix examples.

### Generate Examples
```shell
docker run \
      -v "$PWD/specmatic-license.txt:/usr/src/app/specmatic-license.txt" \
      -v "$PWD/openapi.yaml:/usr/src/app/openapi.yaml" \
      -v "$PWD/specmatic.yaml:/usr/src/app/specmatic.yaml" \
      -v "$PWD/openapi_examples:/usr/src/app/openapi_examples" \
      -v "$PWD/openapi_dictionary.json:/usr/src/app/openapi_dictionary.json" \
      -e SPECMATIC_LICENSE_PATH=/usr/src/app/specmatic-license.txt \
      znsio/specmatic-openapi examples generate openapi.yaml
```

### Validate Examples
```shell
docker run \
      -v "$PWD/specmatic-license.txt:/usr/src/app/specmatic-license.txt" \
      -v "$PWD/openapi.yaml:/usr/src/app/openapi.yaml" \
      -v "$PWD/specmatic.yaml:/usr/src/app/specmatic.yaml" \
      -v "$PWD/openapi_examples:/usr/src/app/openapi_examples" \
      -v "$PWD/openapi_dictionary.json:/usr/src/app/openapi_dictionary.json" \
      -e SPECMATIC_LICENSE_PATH=/usr/src/app/specmatic-license.txt \
      znsio/specmatic-openapi examples validate --spec-file openapi.yaml
```

### Fix invalid Examples
```shell
docker run \
      -v "$PWD/specmatic-license.txt:/usr/src/app/specmatic-license.txt" \
      -v "$PWD/openapi.yaml:/usr/src/app/openapi.yaml" \
      -v "$PWD/specmatic.yaml:/usr/src/app/specmatic.yaml" \
      -v "$PWD/openapi_examples:/usr/src/app/openapi_examples" \
      -v "$PWD/openapi_dictionary.json:/usr/src/app/openapi_dictionary.json" \
      -e SPECMATIC_LICENSE_PATH=/usr/src/app/specmatic-license.txt \
      znsio/specmatic-openapi examples fix --spec-file openapi.yaml
```

### Generate Dictionary from external examples
```shell
docker run \
      -v "$PWD/specmatic-license.txt:/usr/src/app/specmatic-license.txt" \
      -v "$PWD/openapi.yaml:/usr/src/app/openapi.yaml" \
      -v "$PWD/specmatic.yaml:/usr/src/app/specmatic.yaml" \
      -v "$PWD/openapi_examples:/usr/src/app/openapi_examples" \
      -v "$PWD/openapi_dictionary.json:/usr/src/app/openapi_dictionary.json" \
      -e SPECMATIC_LICENSE_PATH=/usr/src/app/specmatic-license.txt \
      znsio/specmatic-openapi examples dictionary --out=openapi_dictionary.json --spec-file openapi.yaml
```