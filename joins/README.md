# JoinTester

This repository can be used to experiment with MySQL queries — specifically JOINs. Experimentation can be done via a MySQL shell or by using the Swift MySQL client dependency in the `Package.swift` manifest file.

## How to Use

There are Docker images for the web (server-side Swift) and database environments, Dockerfile-web and Dockerfile-db. You can build the images using the make targets defined in `Makefile`. For example, if you'd like to build and start a MySQL server with seeded user data, then use the `db_run_seed` target:

```bash
$ make db_run_seed
```

For experimentation, we recommend three Docker containers:

1. database
2. web (server-side Swift)
3. MySQL shell

These containers can be run using the following make targets:

```bash
# run (seeded) database container
$ make db_run_seed

# run web (server-side Swift) container (starts an interactive shell)
$ make web_dev

# run MySQL shell container
$ make db_connect_shell
```

> **Note**: Since some of the make targets start interactive shells, you will need to run the above commands from different terminal windows.
