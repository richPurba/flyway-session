# How to run
- docker run --rm -d --network host --name mysql-test -e MYSQL_ROOT_PASSWORD=123 -e MYSQL_USER=user mysql-test
- docker run --network host  --rm  -v "$(pwd)"/flyway.conf:/flyway/conf/flyway.conf -v "$(pwd)"/sql/:/flyway/sql/ --name flyway-test flyway/flyway migrate -X

# Note
- folder `sql/` is for flyway version files
- there is a naming convention for flyway version files 
- the folder `sql/` contains the *target* sql flavor of the target db. 
- you have to populate the table again. Flyway just registers the schema and the version thereof


https://flywaydb.org/documentation/concepts/migrations#sql-based-migrations

