#!/bin/bash
if [ $# -eq 0 ] ; then
    echo 'Usage: get_response.sh URL'
    exit 1
fi
result=$(curl $1 -I -s | head -n 1 | cut '-d ' '-f2')
if [ $result -eq 200 ]
  then 
    echo "Success"
    exit 0
  else
    echo "Failure"
    exit 1
fi

