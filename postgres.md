Postgresql
==========


* dump db
``` bash
    pg_dump -U postgres -h 127.0.0.1 anyDB > /tmp/anyDB.dump
```

* create database
``` bash
    sudo su
    su postgres
    psql;
    CREATE ROLE cobertura_api LOGIN PASSWORD 'asdf1234' NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE NOREPLICATION;
    CREATE DATABASE cobertura_api WITH OWNER = cobertura_api;
```

* change owner all table
``` bash
    SELECT 'ALTER TABLE '|| schemaname || '."' || tablename ||'" OWNER TO bolsa;'
    FROM pg_tables WHERE NOT schemaname IN ('pg_catalog', 'information_schema')
    ORDER BY schemaname, tablename;
```

* commands
``` bash
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

    # CHANGE PASSWORD
    ALTER USER <user> WITH PASSWORD '<password>';

    # RENAME DATABASE
    ALTER DATABASE "OSEP_PROD_CNTOS8" RENAME TO "OSEP_TEST17";
```