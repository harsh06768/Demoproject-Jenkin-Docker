FROM openjdk:8
EXPOSE 8080
ADD target/demoproject-jenkin-docker-integration.jar demoproject-jenkin-docker-integration.jar
RUN ["javac","TestHello.java"]
RUN ["java","TestHello"]
ENTRYPOINT ["java","-jar","/demoproject-jenkin-docker-integration.jar"]