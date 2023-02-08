FROM ubuntu:focal

ADD ./binaries/proxysql_2.0.12-ubuntu20_amd64.deb /

RUN apt install /proxysql_2.0.12-ubuntu20_amd64.deb

ENTRYPOINT ["proxysql", "-f", "-D", "/var/lib/proxysql"]
