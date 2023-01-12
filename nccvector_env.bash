#!/bin/bash -i

# Go to customcommands directory
cd configs/customcommands
NCCVECTOR_PWD = $pwd

# Sourcing all the shit
# for f in ~/.bash_profile_*; do source $f; done
for f in ./*; do source $f; done
