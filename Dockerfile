FROM tomcat:jre21-temurin-noble
COPY out/artifacts/content/con.war /usr/local/tomcat/webapps/content.war
EXPOSE 8080
