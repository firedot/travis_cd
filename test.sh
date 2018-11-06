#!/usr/bin/env bash
 
 # The following line creates a variable in which the output from the execution of ```hello.sh``` is stored
 output=$(bash hello.sh)
 
 # if statement that tests for particular output the contents of the variable that we created before
 if [ "${output}" == "hello" ]; then
  echo 'GOOD: Test pass'
else
  echo 'BAD: Test fails'
  exit 1
fi
