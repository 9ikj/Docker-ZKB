FROM eclipse-temurin:11-jdk-jammy
RUN apt-get -y update
RUN apt-get -y install language-pack-zh-hans*
WORKDIR /app
RUN wget -O ZeroKingBot.jar https://ghproxy.com/https://github.com/9ikj/ZeroKingBot/releases/download/4.2.9/ZeroKingBot.jar
ENV REDIS_HOST=localhost
ENV TZ="Asia/Shanghai"
EXPOSE 8080
CMD ["java", "-Dfile.encoding=UTF-8","-jar", "/app/ZeroKingBot.jar"]