FROM ubuntu
RUN apt-get update -y
RUN apt-get install python3.9 -y
RUN pip install flask
COPY . /home/myapp/
EXPOSE 5000
