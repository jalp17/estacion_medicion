#!/bin/bash

# Generar el archivo de contraseñas si no existe
if [ ! -f /mosquitto/config/passwd ]; then
    mosquitto_passwd -b /mosquitto/config/passwd fisicos matabuelitas
    echo "Archivo de contraseñas generado automáticamente para 'usuario'"
fi

# Inicia Mosquitto
exec /usr/sbin/mosquitto -c /mosquitto/config/mosquitto.conf
