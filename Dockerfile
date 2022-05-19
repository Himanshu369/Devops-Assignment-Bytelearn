FROM ubuntu
RUN apt-get update -y
RUN apt-get install python3.9 -y
RUN apt-get install python3-pip -y
RUN pip install flask
RUN pip install gunicorn
WORKDIR /home/myapp/
COPY . /home/myapp/
CMD gunicorn app:app --bind 0.0.0.0:$PORT --reload
