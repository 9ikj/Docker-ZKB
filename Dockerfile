FROM eclipse-temurin:11-jdk-jammy
WORKDIR /app
RUN sed -i 's/http:\/\/archive.ubuntu.com/http:\/\/mirrors.tuna.tsinghua.edu.cn\/ubuntu/g' /etc/apt/sources.list
# RUN apt-get update
# RUN apt-get install wget
RUN wget -O ZeroKingBot.jar https://ghproxy.com/https://github.com/9ikj/ZeroKingBot/releases/download/4.2.9/ZeroKingBot.jar
ENV REDIS_HOST=localhost
ENV TZ="Asia/Shanghai"
EXPOSE 8080
CMD [ "java -Dfile.encoding=UTF-8 -jar ZeroKingBot.jar" ]