FROM openjdk:8
EXPOSE 8080
ADD target/devops_calculator-1.0-SNAPSHOT.jar devops_calculator-1.0-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/devops_calculator-1.0-SNAPSHOT.jar"]