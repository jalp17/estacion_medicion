FROM eclipse-mosquitto:latest

# Copiar el archivo de configuración
COPY mosquitto.conf /mosquitto/config/mosquitto.conf

# Copiar el archivo de contraseñas generado
COPY passwd /mosquitto/config/passwd

# Asegurar que Mosquitto tenga permisos para acceder a los archivos
RUN chmod 600 /mosquitto/config/passwd

# Exponer puertos necesarios
EXPOSE 1883
EXPOSE 9001

# Comando para iniciar Mosquitto
CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
