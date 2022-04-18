FROM centos: latest
RUN yum install -y httpd \
 zip\
 unzip
ADD https://codeload.github.com/303vikas/SampleWebApp/zip/refs/heads/master
WORKDIR /var/www/html
RUN unzip SampleWebApp-master.zip
RUN cp -rvf markups-SampleWebApp-master/* .
RUN rm -rf __MACOSX MARKUPS-SampleWebApp-master SampleWebApp-master.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 
