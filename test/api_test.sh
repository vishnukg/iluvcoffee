#!/bin/bash
source "$(dirname "$0")/test_helpers.sh"

BASE_URL="http://localhost:3000"


echo "Checking root api call"
run_curl_test "${BASE_URL}" "/" "Hello World!" "GET /"

echo "Checking /hello endpoint"
run_curl_test "${BASE_URL}" "/hello/" "Real hello" "GET /hello/"

