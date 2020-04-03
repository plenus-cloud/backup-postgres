# backup-postgres
Docker container for postgres backup

# usage

## docker

```
# run every hour command pg_dumpall
docker run -d -e SCHEDULE="* */1 * * *" -e PGPASSWORD=mysecretpassword -e PGHOST=pghostname -e PGUSER=pgsuperuser --name test plenus-backup-postgres:1.0.0

# run every hour command pg_dump for database PGDB
docker run -d -e SCHEDULE="* */1 * * *" -e PGPASSWORD=mysecretpassword -e PGHOST=pghostname -e PGUSER=pgsuperuser -e PGDB=dbname --name test plenus-backup-postgres:1.0.0
```

dump is created in file /dump/postgres.sql
