#!/bin/sh

# -e Exit immediately if a command exits with a non-zero status.
set -e

# Set postgres env vars
export PGUSER="postgres"
export PGPASSWORD="postgres"
export PGDATABASE="test_app"
export PGHOST="db"

# Connect and create db for app
mix ecto.create

# Run any migrations for app
mix ecto.migrate


# Get Phoenix assets ready for startup.
mix do deps.get, deps.compile
cd assets && npm install
cd ..

iex -S mix phx.server
