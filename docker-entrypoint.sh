#!/bin/sh
set -e

if [ "$1" ]
then
  # assume the first argument is a filename
  if [ -f "/$1" ]
  then
    echo running felix "/$1"
    exec felix "/$1"
  else
    exec echo file "/$1" not found
  fi
else
  # by default with no arguments run sleep
  exec sleep infinity
fi

