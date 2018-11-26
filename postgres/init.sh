#!/bin/bash
if test -z "$POSTGRESS_PASSWORD"; then
    echo "$POSTGRESS_PASSWORD not defined"
    exit 1
fi

#auth="-u user -p $POSTGRESS_PASSWORD"


psql -U user -c "CREATE DATABASE 'database';"
psql -U user -c "CREATE USER user WITH ENCRYPTED PASSWORD '$POSTGRESS_PASSWORD';"
psql -U user -c "GRANT ALL PRIVILEGES ON DATABASE database TO  user;"
