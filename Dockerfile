# Pull base image 
From tomcat:8-jre8

# Maintainer 
MAINTAINER "vijay" 
COPY **/*.war /usr/local/tomcat/webapps/webapp.war
