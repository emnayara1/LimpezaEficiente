FROM tomcat:9.0-jdk17

# Remove os apps padrão
RUN rm -rf /usr/local/tomcat/webapps/*

# Copia seu WAR para a pasta padrão do Tomcat
COPY LimpezaEficiente.war /usr/local/tomcat/webapps/ROOT.war

# Exponha a porta 8080
EXPOSE 8080

# Comando padrão
CMD ["catalina.sh", "run"]
