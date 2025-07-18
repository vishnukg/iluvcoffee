#!/bin/bash

assert_response() {
  local response="$1"
  local expected="$2"
  local test_name="$3"

  if [ "$response" = "$expected" ]; then
    echo -e "\033[0;32m[$test_name] Test passed\033[0m"
  else
    echo -e "\033[0;31m[$test_name] Test failed: expected '$expected', got '$response'\033[0m"
    exit 1
  fi
}

# Usage: run_curl_test <base_url> <endpoint> <expected> <test_name> [curl_options...]
run_curl_test() {
  local base_url="$1"
  local endpoint="$2"
  local expected="$3"
  local test_name="$4"
  local response
  response=$(curl -s -X GET "${base_url}${endpoint}")
  assert_response "$response" "$expected" "$test_name"
}
