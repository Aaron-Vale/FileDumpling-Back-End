#!/bin/bash
TOKEN=C4JyNfnrWnUgb/MmUIb6yRnF8rWbNB0YtoHOfWE0HQM=--MY98hO0w3fmTlF89k5D+7ziGz+F4mt+pzj3qCVfuyR8=

API="http://localhost:4741"
URL_PATH="/uploads"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "upload": {
      "name": "'"${NAME}"'"
    }
  }'

echo
