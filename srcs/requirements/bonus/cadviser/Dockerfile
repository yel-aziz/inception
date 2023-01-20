FROM debian:buster

WORKDIR /usr/local/bin/

RUN apt-get update && apt-get install -y wget && wget https://github.com/google/cadvisor/releases/download/v0.47.0/cadvisor-v0.47.0-linux-amd64  -O cadvisor

RUN chmod +x cadvisor

CMD ["cadvisor"]