FROM centos:7
LABEL Author="omkarbelkar"
RUN yum install java-11-openjdk -y

ADD https://downloads.apache.org/tomcat/tomcat-8/v8.5.99/bin/apache-tomcat-8.5.99.tar.gz /opt

RUN tar -xzf /opt/apache-tomcat-8.5.99.tar.gz -C /opt/

WORKDIR /opt/apache-tomcat-8.5.99
#ADD https://s3-us-west-2.amazonaws.com/studentapi-cit/student.war webapps 

COPY student.war webapps/student.war
EXPOSE 8080 
CMD bin/catalina.sh run 
