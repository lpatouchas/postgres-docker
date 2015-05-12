FROM postgres:latest
MAINTAINER Leonidas Patouchas

ENV POSTGRES_USERNAME postgres
ENV POSTGRES_PASSWORD postgres
ENV USERNAME acts
ENV PASSWORD acts
ENV DATABASE gateway
#ENV SCHEMA mydb_schema_name
ENV PGPASSWORD $PASSWORD

ADD scripts /docker-entrypoint-initdb.d
