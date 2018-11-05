#!/usr/bin/env bash
 output=$(bash -x hello.sh)
 if [ "${output}" == "hello" ]; then
  echo Test pass
else
  echo Test fails
  exit 1
fi
