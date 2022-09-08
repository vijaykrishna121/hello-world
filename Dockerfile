# Pull base image 
From tomcat:8-jre8 as build

# Maintainer 
MAINTAINER "vijay" 
COPY target/*.war /usr/local/tomcat/webapps/webapp.war
