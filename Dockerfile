FROM eclipse-mosquitto:latest
# Copiar el archivo de configuración y el script
COPY mosquitto.conf /mosquitto/config/mosquitto.conf
COPY entrypoint.sh /entrypoint.sh

# Asegurar que el script tenga permisos ejecutables
RUN chmod +x /entrypoint.sh

# Configurar el punto de entrada
ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 1883
EXPOSE 9001
CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
