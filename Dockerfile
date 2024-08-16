FROM ubuntu:latest
LABEL "Author"="sankalp"
LABEL "Project"="nano"
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update
RUN apt install apache2 git -y
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80
WORKDIR /var/www/html
VOLUME /var/log/apache2
ADD nano.tar.gz /var/www/html


