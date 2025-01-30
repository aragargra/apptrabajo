# Usa la imagen oficial de Tomcat 8.5
FROM tomcat:8.5-jdk17

# Elimina la aplicación predeterminada (opcional, si quieres evitar conflictos)
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copia tu archivo WAR en el directorio 'webapps' de Tomcat
COPY AppTrabajo.war /usr/local/tomcat/webapps/AppTrabajo.war

# Expone el puerto 8080 para acceder a la app
EXPOSE 8080

# Comando para iniciar Tomcat
CMD ["catalina.sh", "run"]

