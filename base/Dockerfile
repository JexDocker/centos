FROM centos:7.3.1611

MAINTAINER Justin.h<justin@5nas.cc>

#修改容器时区
RUN rm -rf /etc/localtime
RUN ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

#创建entrypoint初始化文件存放目录
RUN mkdir /docker-entrypoint
