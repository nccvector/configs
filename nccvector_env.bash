#!/bin/bash -i

echo "$BASH_SOURCE"
echo "${BASH_SOURCE[${#BASH_SOURCE[@]} - 1]}"

# Sourcing all the shit
for f in ./customcommands/*; do source $f; echo "sourced $f"; done
