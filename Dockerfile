FROM ubuntu:precise
MAINTAINER sergiofbsilva

RUN \
  apt-get update && \
  apt-get install -y python python-dev python-pip python-virtualenv

RUN apt-get install -y wget

WORKDIR /root

RUN wget --no-check-certificate https://lh5.googleusercontent.com/-r55FCZ859as/VzuFUM-_H5I/AAAAAAAAb0I/SbVhI5ud2Hg0fCxzGO38ozqwMOCk37v_wCL0B/w960-h655-no/2016-05-17.jpg

RUN echo "<html><head></head><body><img src='/2016-05-17.jpg'/></body></html>" > index.html

EXPOSE 8000

CMD ["/usr/bin/python2.7", "-m", "SimpleHTTPServer"]