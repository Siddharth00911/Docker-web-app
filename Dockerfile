FROM ubuntu:latest

WORKDIR /app

COPY requrements.txt /app
COPY devops /app

RUN sudo apt-get update && \
    get-apt install -y python3 python3-pip && \
    pip install -r requirements.txt && \
    cd devops

ENTRYPOINT ["python3"]
CMD ["manage.py", "runserver", "0.0.0.0:7000"]
