#!/usr/bin/env bash
 output=$(bash hello.sh)
 if [ "${output}" == "hello" ]; then
  echo 'GOOD: Test pass'
else
  echo 'BAD: Test fails'
  exit 1
fi
