#!/bin/sh
set -e

echo "Waiting for database to be ready..."

until nc -z "$DB_HOST" "$DB_PORT"; do
  echo "Waiting for database..."
  sleep 2
done

echo "Database is ready. Running migrations..."

migrate \
  -path /migrations \
  -database "mysql://${DB_USER}:${DB_PASSWORD}@tcp(${DB_HOST}:${DB_PORT})/${DB_NAME}?multiStatements=true" \
  up

echo "Migrations finished"
