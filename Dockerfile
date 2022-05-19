FROM ubuntu
RUN apt-get update
RUN apt-get install python3.9
RUN pip install flask
COPY . /home/myapp/
EXPOSE 5000
