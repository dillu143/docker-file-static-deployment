FROM amazonlinux
RUN yum install git -y
RUN yum install httpd -y 
CMD httpd-foreground
WORKDIR /usr/local/apache/htdocs
RUN git clone https://github.com/dillu143/food.git
EXPOSE 80
