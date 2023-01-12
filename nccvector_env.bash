#!/bin/bash -i

# Sourcing all the shit
for f in ./customcommands/*; do source $f; echo "sourced $f"; done
