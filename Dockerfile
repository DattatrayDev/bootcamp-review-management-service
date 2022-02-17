FROM openjdk:11

ADD target/review-management-service-0.0.1-SNAPSHOT.jar review-management.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "review-management.jar"]