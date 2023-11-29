#!/bin/bash

# Variables
DB_NAME="blockbuster"
BACKUP_DIR="/var/lib/postgresql/12/main/"
TIMESTAMP=$(date +"%Y%m%d%H%M%S")
BACKUP_FILE="$BACKUP_DIR/$DB_NAME_backup_$TIMESTAMP.sql"

# Verificar si el directorio de backups existe, si no, crearlo
if [ ! -d "$BACKUP_DIR" ]; then
  mkdir -p "$BACKUP_DIR"
fi

# Crear el backup utilizando pg_dump
pg_dump -U davidsalomon -h localhost -d $DB_NAME > $BACKUP_FILE

# Verificar si el backup fue exitoso
if [ $? -eq 0 ]; then
  echo "Backup completado con éxito. El archivo se encuentra en: $BACKUP_FILE"
else
  echo "Error al realizar el backup."
fi
