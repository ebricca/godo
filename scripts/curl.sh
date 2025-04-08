#!/bin/bash

# --- Variables - use the ENV
API_ENDPOINT="${MY_ENV_ENDPOINT:-https://example.com}"
BEARER_TOKEN="${MY_ENV_TOKEN:-bearertoken}"
JSON_PAYLOAD="${MY_ENV_JSON:-inputjson}"

# --- The curl command ---
curl --insecure -X POST \
     "$API_ENDPOINT" \
     -H "Authorization: Bearer ${BEARER_TOKEN}" \
     -H "Content-Type: application/json" \
     -d "$JSON_PAYLOAD" \
     -v # Optional: -v for verbose output (shows request headers/details)
     
