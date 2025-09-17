#!/bin/sh
set -e

# with no arguments
if [ "$#" -eq 0 ]
then
  exec sleep infinity
else
  # otherwise accept any argument and run it
  exec "$@"
fi

