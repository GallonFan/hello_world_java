# 使用官方 OpenJDK 11 基础镜像
FROM openjdk:11-jre-slim

# 设置工作目录
WORKDIR /app

# 将编译好的 JAR 文件复制到镜像中
COPY target/hello-world-service-0.0.1-SNAPSHOT.jar /app/app.jar

# 设置环境变量
ENV JAVA_OPTS=""

# 启动应用程序
ENTRYPOINT exec java $JAVA_OPTS -jar app.jar