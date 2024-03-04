FROM alpine:3.14

# Install prerequisites
RUN apk --no-cache add openjdk8-jre wget curl && \
    rm -rf /var/cache/apk/*

# Set environment variables
ENV JAVA_HOME /usr/lib/jvm/default-jvm
ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH

# Download and install Tomcat
# https://downloads.apache.org/tomcat/tomcat-10/v10.1.19/bin/apache-tomcat-10.1.19.tar.gz
RUN wget -q https://downloads.apache.org/tomcat/tomcat-10/v10.1.19/bin/apache-tomcat-10.1.19.tar.gz -O /tmp/tomcat.tar.gz && \
    tar xvfz /tmp/tomcat.tar.gz -C /usr/local && \
    mv /usr/local/apache-tomcat-10.1.19 $CATALINA_HOME && \
    rm -rf $CATALINA_HOME/webapps/*

# Download sample war file
RUN curl -L -o $CATALINA_HOME/webapps/sampletest.war https://github.com/bhaskarndas/sample-war/raw/main/sampletest.war

# Expose Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]

# Metadata
LABEL maintainer="zerrouk.mohammed.hacene@gmail.com"
