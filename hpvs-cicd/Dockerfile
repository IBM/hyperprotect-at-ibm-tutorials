FROM s390x/nginx

MAINTAINER sbatta@us.ibm.com
ENV IBM_HYPERPROTECT_VERSION=0.1

WORKDIR /usr/share/nginx/html
RUN curl -O -L https://raw.githubusercontent.com/sandeep-at-ibm/hyperprotect-at-ibm/master/index.html

EXPOSE 8080
