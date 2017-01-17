docker image for pgbouncer based off of ubuntu:14.04

To pull this image: docker pull mbentley/ubuntu-pgbouncer

Example usage: docker run -i -t -d -p 6432:6432 --link postgres:pg mbentley/ubuntu-pgbouncer

This requires a link (named pg) to a postgres container or manually configured environment variables as follows:

PG_PORT_5432_TCP_ADDR (default: )

PG_PORT_5432_TCP_PORT (default: )

PG_ENV_POSTGRESQL_USER (default: )

PG_ENV_POSTGRESQL_PASS (default: )

PG_ENV_POSTGRESQL_MAX_CLIENT_CONN (default: 10000)

PG_ENV_POSTGRESQL_DEFAULT_POOL_SIZE (default: 400)

PG_ENV_POSTGRESQL_SERVER_IDLE_TIMEOUT (default: 240)

PG_POOL_MODE (default: session)

PG_LOG_VERBOSE (default: 0)

Note: I would suggest using the mbentley/ubuntu-postgres9.3 image with this as it includes the above environment variables.
