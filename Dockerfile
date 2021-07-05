FROM openjdk:13-slim-buster

RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo "Asia/Shanghai" > /etc/timezone \
&&sed -i 's#http://deb.debian.org#https://mirrors.163.com#g' /etc/apt/sources.list \
 && apt update &&apt install -y ttf-dejavu fontconfig  && apt clean &&rm -rf /var/lib/apt/lists/*

