FROM ubuntu:20.04

RUN apt-get update && apt install python3 -y

EXPOSE 5000

CMD ["python3", "-m", "http.server"]