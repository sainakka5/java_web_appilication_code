FROM tomcat:9.0-jre8

# Set the working directory inside the container
WORKDIR /usr/local/tomcat/webapps
  
COPY index.jsp .
COPY pom.xml .
COPY HelloServlet.java .

EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
