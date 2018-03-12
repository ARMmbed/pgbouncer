#!/bin/bash

USER=$(cat /tmp/pgbouncer/etc/userlist.txt | cut -d' ' -f 1 | sed 's/\"//g')
PASSWD=$(cat /tmp/pgbouncer/etc/userlist.txt | cut -d' ' -f 2 | sed 's/\"//g')

exec PGPASSWORD="$PASSWD" psql --port=6432 --username=device_catalog --no-password --host /tmp/pgbouncer/run/ -W pgbouncer --command='SHUTDOWN;'
