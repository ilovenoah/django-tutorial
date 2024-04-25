#!/bin/bash
set -x

sed -i "s/POSTGRES_DB/$POSTGRES_DB/g" "./mysite/.my_pgpass"
sed -i "s/POSTGRES_USER/$POSTGRES_USER/g" "./mysite/.my_pgpass"
sed -i "s/POSTGRES_PASSWORD/$POSTGRES_PASSWORD/g" "./mysite/.my_pgpass"
sed -i "s/POSTGRES_DB/$POSTGRES_DB/g" "./mysite/.pg_service.conf"
sed -i "s/POSTGRES_USER/$POSTGRES_USER/g" "./mysite/.pg_service.conf"
chmod 0600 /code/mysite/.my_pgpass
chmod 0600 /code/mysite/.pg_service.conf
cp -f /code/mysite/.pg_service.conf ~/.pg_service.conf

while true; do
  sleep 100
done