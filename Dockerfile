# Dockerfile ,,,openmrs, stage-1
FROM maven:3-jdk-8 as mavenbuild
RUN git clone https://github.com/srvarri/openmrs-core.git && \
    cd openmrs-core/ && \
    mvn package
# Dockerfile ,,,openmrs run i,e stage-2
#war file location: /openmrs/openmrs-core/target/openmrs.war
FROM tomcat:8-jdk8
LABEL AUTHOR=sai
LABEL BLOG=https://directdevops.blog
EXPOSE 8080
VOLUME /root/.OpenMRS
COPY --from=mavenbuild /openmrs-core/webapp/target/openmrs.war /usr/local/tomcat/webapps/openmrs.war
CMD ["catalina.sh", "run"]

