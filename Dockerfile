From tomcat:8-jre8 

# Maintainer 
MAINTAINER "karansid95@gmail.com" 
RUN pwd
COPY /webapp/target/webapp.war /usr/local/tomcat/webapps/

