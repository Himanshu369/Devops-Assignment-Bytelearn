FROM ubuntu
RUN apt-get update -y && apt-get -y install python3.9 python3-pip 
RUN pip install -r requirements.txt
WORKDIR /home/myapp/
COPY . /home/myapp/
CMD gunicorn app:app --bind 0.0.0.0:$PORT --reload
