#!/bin/bash

set -e

DBUSER=$(cat /tmp/pgbouncer/etc/userlist.txt | cut -d' ' -f 1 | sed 's/\"//g')
DBPASSWD=$(cat /tmp/pgbouncer/etc/userlist.txt | cut -d' ' -f 2 | sed 's/\"//g')

PGPASSWORD="$DBPASSWD" psql --port=6432 --username=$DBUSER --host /tmp/pgbouncer/run/ pgbouncer --command='SHUTDOWN;'
