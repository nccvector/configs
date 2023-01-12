#!/bin/bash -i

echo "$BASH_SOURCE"
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
echo "$SCRIPT_DIR"

# Sourcing all the shit
for f in ./customcommands/*; do source $f; echo "sourced $f"; done
