FROM centos
WORKDIR /opt/
RUN curl -O https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.73/bin/apache-tomcat-9.0.73.tar.gz
RUN tar -xvzf apache-tomcat-9.0.73.tar.gz -C /opt/ && rm -rf apache-tomcat-9.0.73.tar.gz
RUN curl -O https://builds.openlogic.com/downloadJDK/openlogic-openjdk/8u362-b09/openlogic-openjdk-8u362-b09-linux-x64.tar.gz && tar -xvzf openlogic-openjdk-8u362-b09-linux-x64.tar.gz && rm -rf openlogic-openjdk-8u362-b09-linux-x64.tar.gz
env JAVA_HOME /opt/openlogic-openjdk-8u362-b09-linux-x64/
env PATH=$JAVA_HOME/bin:$PATH
RUN export JAVA_HOME
RUN export PATH
RUN java -version
EXPOSE 8080
CMD ["/opt/apache-tomcat-9.0.73/bin/catalina.sh", "run"]
