#!/bin/sh
set -e
set -x

# work directory
SCRIPT_PATH=`cd "$(dirname "$0")"; pwd -P`
cd $SCRIPT_PATH

# update
git add .
git commit -m "commit"
git push
