#!/bin/bash

set -e

su - postgres -c "psql --port=6432 --username=pgbouncer --host /tmp/pgbouncer/run/ --no-password pgbouncer --command='SHUTDOWN'"
