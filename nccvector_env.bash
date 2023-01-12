#!/bin/bash -i

# echo "$BASH_SOURCE" # complete path till this file
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# Sourcing all the shit
for f in $SCRIPT_DIR/*; do source $f; echo "sourced $f"; done
