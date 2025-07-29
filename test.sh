#!/bin/bash
output=$(bash hello.sh)
if [[ "$output" == "Hello from Jenkins automated build!" ]]; then
  echo "Test passed!"
  exit 0
else
  echo "Test failed!"
  exit 1
fi
