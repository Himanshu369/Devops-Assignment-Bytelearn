FROM ubuntu
RUN apt-get update -y
RUN apt-get install python3.9 -y
RUN apt-get install python3-pip -y
RUN pip install flask
WORKDIR /home/myapp
COPY . /home/myapp/
EXPOSE 5000
ENTRYPOINT ["python3"]
CMD ["app.py"]
