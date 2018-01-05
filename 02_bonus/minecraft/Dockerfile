FROM debian

RUN apt update
RUN apt upgrade -y
RUN apt install -y openjdk-8-jre-headless

WORKDIR ~

ADD https://s3.amazonaws.com/Minecraft.Download/versions/1.12.2/minecraft_server.1.12.2.jar .
COPY run.sh .
COPY server.properties .

RUN chmod +x run.sh
RUN echo "eula=true" > eula.txt

EXPOSE 25565/tcp

ENTRYPOINT ./run.sh