FROM debian
EXPOSE 9987/udp 10011 30033

WORKDIR home/teamspeak3-server_linux_amd64
ENV TS3SERVER_LICENSE accept

RUN apt-get update -y && apt-get install bzip2 wget -y \
	&& wget http://dl.4players.de/ts/releases/3.4.0/teamspeak3-server_linux_amd64-3.4.0.tar.bz2 && \
	bunzip2 *.bz2 && \
	tar -xvf *.tar && \
	useradd ts3

COPY ts3server.ini /home/t3/teamspeak3-server_linux_amd64/ts3server.ini
USER ts3

#docker build -t ts3server:0.1 .
#docker run --rm -dit --name ts3server -p 10011:10011 -p 30033:30033 -p 9987:9987/udp ts3server:0.1
CMD ["sh", "teamspeak3-server_linux_amd64/ts3server_minimal_runscript.sh", "inifile=ts3server.ini"]
