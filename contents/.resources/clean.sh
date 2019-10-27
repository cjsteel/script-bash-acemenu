#!/bin/bash
#
# Get the path to our script no matter where it is executed
SCRIPT_PATH="$( cd "$(dirname "$0")" ; pwd -P )"
echo ${SCRIPT_PATH}
cd ${SCRIPT_PATH}
rm ../index.html
rm ../index.md
