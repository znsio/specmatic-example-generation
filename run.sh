#!/bin/bash
docker pull znsio/specmatic-openapi
docker run \
      -p 9001:9001 \
      -v "$PWD/specmatic-license.txt:/usr/src/app/specmatic-license.txt" \
      -v "$PWD/openapi.yaml:/usr/src/app/openapi.yaml" \
      -v "$PWD/specmatic.yaml:/usr/src/app/specmatic.yaml" \
      -v "$PWD/openapi_examples:/usr/src/app/openapi_examples" \
      -v "$PWD/openapi_dictionary.yaml:/usr/src/app/openapi_dictionary.yaml" \
      -e SPECMATIC_LICENSE_PATH=/usr/src/app/specmatic-license.txt \
      znsio/specmatic-openapi examples interactive --spec-file openapi.yaml