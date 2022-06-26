FROM mysql:5.6.50

COPY ./00-create-database.sql /docker-entrypoint-initdb.d
COPY ./01-create-schema-2022-06-26.sql /docker-entrypoint-initdb.d
