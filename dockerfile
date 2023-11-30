FROM ubuntu

MAINTAINER Espano Rens  <qrsespano@tip.edu.ph>

ARG DEBAIN_FRONTEND=noninteractive
RUN apt update; apt dist-upgrade -y
RUN apt install apeache2 -y; apt install apache2-utils -y
RUN apt install mariadb-server -y
ENTRYPOINT apache2ctl -D FOREGROUND: mysql -D FOREGROUND
