FROM ubuntu
MAINTAINER Arun prasath <arunprasath33@gmail.com>
RUN apt-get update && apt-get install -y \
    python \
    python-pip
RUN pip install flask
RUN pip install apscheduler==2.1.2
WORKDIR /root/
COPY app.py /root/app.py
EXPOSE 1234
CMD python /root/app.py
