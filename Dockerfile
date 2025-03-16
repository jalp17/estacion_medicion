FROM eclipse-mosquitto:latest

# Copiar el archivo de configuración
COPY mosquitto.conf /mosquitto/config/mosquitto.conf

# Exponer puertos necesarios
EXPOSE 1883
EXPOSE 9001

# Comando para iniciar Mosquitto
CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
