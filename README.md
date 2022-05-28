Ubipong Ecosystem
=================

This contains the Docker compose configurations to run the Ubipong system,
including the database, REST API, and UI.  However, we still have to use the
real challonge.com.

# Environment
# -----------
# 
# Run 
# 
# ```bash
# docker compose ps
# ```
# 
# to see which environment variables need to be set.

Services
--------

There are a few categories of services:

- Infrastructure: these include database, messaging, or similar services that
  do not contain much custom code.  However, sometimes they require
  initialization, so there may be services with the suffix `-init` that need
  to be started before the services are started.  The examples include:

  - `mysql-init` and `mysql`
  - `pubsub-init` and `pubsub`

- Development: these are the application we are actively developing.  These
  have the `-dev` suffix and include a shared mount to the host directory where
  the application is.  To start these services, we will need to manually
  checkout the application under the subdirectory first.

Start
-----

Choose a service to start.  Some images require checkout 

```bash
docker composue up -d {service}
```

Stop
----

```bash
docker compose down --remove-orphans
```



