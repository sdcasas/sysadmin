Postgresql
==========


* dump db

    pg_dump -U postgres -h 127.0.0.1 anyDB > /tmp/anyDB.dump

* create database

    sudo su
    su postgres
    psql;
    CREATE ROLE cobertura_api LOGIN PASSWORD 'asdf1234' NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE NOREPLICATION;^C
    CREATE DATABASE cobertura_api WITH OWNER = cobertura_api;


* change owner all table

    SELECT 'ALTER TABLE '|| schemaname || '."' || tablename ||'" OWNER TO bolsa;'
    FROM pg_tables WHERE NOT schemaname IN ('pg_catalog', 'information_schema')
    ORDER BY schemaname, tablename;

ALTER TABLE auth_group OWNER TO bolsa;
ALTER TABLE auth_group_permissions OWNER TO bolsa;
ALTER TABLE auth_permission OWNER TO bolsa;
ALTER TABLE auth_user OWNER TO bolsa;
ALTER TABLE auth_user_groups OWNER TO bolsa;
ALTER TABLE auth_user_user_permissions OWNER TO bolsa;
ALTER TABLE curriculum_vitae_curriculumvitae OWNER TO bolsa;
ALTER TABLE curriculum_vitae_destreza OWNER TO bolsa;
ALTER TABLE curriculum_vitae_destrezacv OWNER TO bolsa;
ALTER TABLE curriculum_vitae_estudiocv OWNER TO bolsa;
ALTER TABLE curriculum_vitae_experiencia OWNER TO bolsa;
ALTER TABLE curriculum_vitae_idioma OWNER TO bolsa;
ALTER TABLE curriculum_vitae_idiomacv OWNER TO bolsa;
ALTER TABLE django_admin_log OWNER TO bolsa;
ALTER TABLE django_content_type OWNER TO bolsa;
ALTER TABLE django_migrations OWNER TO bolsa;
ALTER TABLE django_session OWNER TO bolsa;
ALTER TABLE empresa_empresa OWNER TO bolsa;
ALTER TABLE empresa_empresa_rubro OWNER TO bolsa;
ALTER TABLE empresa_rubro OWNER TO bolsa;
ALTER TABLE oauth2_provider_accesstoken OWNER TO bolsa;
ALTER TABLE oauth2_provider_application OWNER TO bolsa;
ALTER TABLE oauth2_provider_grant OWNER TO bolsa;
ALTER TABLE oauth2_provider_refreshtoken OWNER TO bolsa;
ALTER TABLE oferta_categoriaoferta OWNER TO bolsa;
ALTER TABLE oferta_oferta OWNER TO bolsa;
ALTER TABLE oferta_oferta_categoria OWNER TO bolsa;
ALTER TABLE oferta_postulado OWNER TO bolsa;
ALTER TABLE persona_persona OWNER TO bolsa;
ALTER TABLE util_telefono OWNER TO bolsa;
ALTER TABLE util_ubicacion OWNER TO bolsa;