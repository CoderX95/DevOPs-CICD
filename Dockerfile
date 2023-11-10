From tomcat:8-jre8 

RUN pwd
COPY /webapp/target/webapp.war /usr/local/tomcat/webapps/

