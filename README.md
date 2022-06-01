Ubipong Ecosystem
=================

This contains the Docker compose configurations to run the Ubipong system,
including the database, REST API, and UI.  However, we still have to use the
real challonge.com.

Services
--------

There are a few categories of services:

- Infrastructure: these include database, messaging, or similar services that
  do not contain much custom code.  Some services (such as Cassandra), can be
  initialized with a script in the same container.  However, some services
  need to be initalized with a separate container, named using the suffix
  `-init`.  They need to be started before their corresponding services are
  started.  The examples include:

  - `mysql-init` and `mysql`
  - `pubsub-init` and `pubsub`

- Development: these are the application we are actively developing.  These
  have the `-dev` suffix and include a shared mount to the host directory where
  the application is.  To start these services, we will need to manually
  check out the application under the subdirectory first.

- Deployment: these are the applications we have built and want to run.  These
  may be built using shared mount.  If so, we need to manually check out and
  build the application.

- Test: these are the tests for the system.  These are like deployment
  services, but we generally want to run it in the foreground using
  `docker compose up {service}`

Environment
-----------

Run 

```bash
docker compose ps
```

to see which environment variables need to be set.

Start
-----

Choose a service to start.  Some images require checkout 

```bash
docker compose up -d {service}
```

Stop
----

```bash
docker compose down --remove-orphans
```

Special Notes on `ubipong-api` Service
--------------------------------------

To run this, make sure the Java options are saved in the `javaOptions` file.
The file should look like this:

```properties
-Dspring.profiles.active=local
-Dchallonge.api-key={CHALLONGE_API_KE}}
-Dspring.datasource.type=com.zaxxer.hikari.HikariDataSource
-Dspring.datasource.url=jdbc:mysql://mysql/ubipong?useSSL=false&allowPublicKeyRetrieval=true
-Dspring.datasource.username=ubipong
-Dspring.datasource.password=secret
```

(pay special attention to the MySQL options)

