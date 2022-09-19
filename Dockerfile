# Pull base image 
From tomcat:8-jre8

# Maintainer 
MAINTAINER "vijay" 
ADD ./target/*.war /usr/local/tomcat/webapps/
