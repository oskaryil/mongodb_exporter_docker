FROM ubuntu:latest

RUN apt-get update && apt-get install wget -y

RUN wget https://github.com/percona/mongodb_exporter/releases/download/v0.7.1/mongodb_exporter-0.7.1.linux-amd64.tar.gz

RUN tar xvzf mongodb_exporter-0.7.1.linux-amd64.tar.gz

RUN mv mongodb_exporter /usr/local/bin/

EXPOSE 9216

CMD ["/usr/local/bin/mongodb_exporter"]
