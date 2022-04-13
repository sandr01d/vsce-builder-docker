#!/bin/bash

VOLUME='/package'

cd "$VOLUME" || { echo "VOLUME NOT MOUNTED - ABORTING"; exit 0; }
# Install npm dependencies
npm install .
# Build the package
vsce package
