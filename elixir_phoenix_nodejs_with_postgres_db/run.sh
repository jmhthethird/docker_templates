#!/bin/sh

# -e Exit immediately if a command exits with a non-zero status.
set -e

# Get Phoenix application ready for startup.
mix deps.get
cd assets && npm install
cd ..
