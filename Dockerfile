# Sử dụng OpenJDK 17
FROM openjdk:17-jdk-slim

# Tạo user an toàn
RUN groupadd spring && useradd -g spring spring
USER spring:spring

# Đặt thư mục làm việc
WORKDIR /app

# Sao chép file JAR vào container
COPY target/spring-boot-docker-complete-0.0.1-SNAPSHOT.jar app.jar

# Chạy ứng dụng Spring Boot
ENTRYPOINT ["java", "-jar", "app.jar"]
