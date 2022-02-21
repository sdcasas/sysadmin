Postgresql
==========


* dump db

    pg_dump -U postgres -h 127.0.0.1 anyDB > /tmp/anyDB.dump

* create database

    sudo su
    su postgres
    psql;
    CREATE ROLE cobertura_api LOGIN PASSWORD 'asdf1234' NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE NOREPLICATION;
    CREATE DATABASE cobertura_api WITH OWNER = cobertura_api;


* change owner all table

    SELECT 'ALTER TABLE '|| schemaname || '."' || tablename ||'" OWNER TO bolsa;'
    FROM pg_tables WHERE NOT schemaname IN ('pg_catalog', 'information_schema')
    ORDER BY schemaname, tablename;

* commands

    \l              => listar las db
    \du             => listar los usuarios
    \dt             => listar las tablas
    \dx             => listar extensiones de una db
    \c DATABASE     => conectar a una db

    # dump to csv
    \COPY NAMETABLE to /tmp/namefile.csv CSV HEADER

    # print version
    SHOW server_version;
    # OR
    SELECT version();