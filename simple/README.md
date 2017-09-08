# Simple MySQL Example

## How to Use

Run the `sql_test` target to start a MySQL server with a database named `example`:

```bash
# in the ios-short-s3-sql-example/ directory...
$ make sql_test
```

Once the server is running, create a new Terminal window and use the `sql_test_connect` target to create a MySQL shell:

```bash
# in the ios-short-s3-sql-example/ directory...
$ make sql_test_connect

# you’re in the shell! see what’s in the “example” database
mysql > use example;
mysql > select * from fruits;
```

From here you can explore the `example` database and views its table.
