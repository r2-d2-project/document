#!/bin/sh
set -e
set -x

# work directory
SCRIPT_PATH=`cd "$(dirname "$0")"; pwd -P`
cd $SCRIPT_PATH

# deploy
cd ../r2-d2-project.github.io/
mkdocs gh-deploy --config-file ../document/mkdocs.yml --remote-branch master
cd $SCRIPT_PATH
rm -fr site/
