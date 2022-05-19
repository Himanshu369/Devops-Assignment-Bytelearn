FROM ubuntu
RUN apt-get update -y
RUN apt-get install python3.9 -y
RUN apt-get install python3-pip -y
RUN pip install flask
COPY . /home/myapp/
EXPOSE 5000
RUN python3 /home/myapp/*.py
