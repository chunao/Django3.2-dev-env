FROM ubuntu:20.04
RUN apt clean && \
  apt update && \
  apt upgrade -y && \
  apt install -y vim && \
  apt install -y locales && \
  locale-gen ja_JP.UTF-8 && \
  apt install -y tzdata
ENV LANG ja_JP.UTF-8 && \
  LANGUAGE ja_JP:ja && \
  LC_ALL ja_JP.UTF-8 && \
  TZ Asia/Tokyo
WORKDIR /home/User
RUN apt install -y python3.9 && \
  apt install -y init && \
  apt install -y systemd && \
  apt install -y nginx && \
  apt install -y python3-pip && \
  apt install -y python3-dev
