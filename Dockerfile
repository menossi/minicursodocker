FROM ubuntu:22.04 

RUN apt update && apt install -y python3 iputils-ping
RUN apt install -y python3-pip

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .
EXPOSE 5000
ENTRYPOINT [ "python3", "app.py"]