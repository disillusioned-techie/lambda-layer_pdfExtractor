FROM python:3.9-bullseye

WORKDIR /app


#RUN sudo apt update
#RUN sudo apt-get update


RUN apt-get update && \
    apt-get install -y zip && \
    rm -rf /var/lib/apt/lists/*
	
COPY . .

RUN pip install -r requirements.txt -t /app/python/

RUN zip -r9 pdfExtractor.zip python