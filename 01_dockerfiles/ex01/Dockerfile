FROM debian

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install bzip2 tar

EXPOSE 9987/udp
EXPOSE 30033
EXPOSE 10011
EXPOSE 41144

WORKDIR ~/ts/

ADD http://dl.4players.de/ts/releases/3.0.13.8/teamspeak3-server_linux_amd64-3.0.13.8.tar.bz2 ./
RUN tar -xf teamspeak3-server_linux_amd64-3.0.13.8.tar.bz2
WORKDIR teamspeak3-server_linux_amd64

ENTRYPOINT sh ts3server_minimal_runscript.sh
