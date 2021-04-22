
FROM docker.io/centos
MAINTAINER “Muhammad Luthfi Safa” “luthfi.safa@gmail.com”
RUN yum -y update && yum -y install httpd && yum clean all
EXPOSE 80
COPY ./src/ /var/www/html
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
