FROM debian:buster

WORKDIR /usr/local/bin/

RUN apt-get update && apt-get install -y wget && wget https://github.com/google/cadvisor/releases/download/v0.35.0/cadvisor  -O cadvisor

RUN chmod +x cadvisor

CMD ["cadvisor"]