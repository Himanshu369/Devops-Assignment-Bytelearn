FROM ubuntu
RUN apt-get update
RUN apt-get install python
RUN pip install flask
COPY . /home/myapp/
EXPOSE 80
