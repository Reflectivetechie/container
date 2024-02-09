FROM alpine:3.18
LABEL author = "Reflectivetech"
LABEL organization = "Reflectivetechie"
RUN apt-get update && \
    apt-get install -y openjdk-11-jdk
RUN wget https://referenceapplicationskhaja.s3.us-west-2.amazonaws.com/spring-petclinic-2.4.2.jar
EXPOSE 8080
CMD ["java", "-jar", "/spring-petclinic-2.4.2.jar"]