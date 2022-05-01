FROM itzg/minecraft-server:latest

ENV EULA=TRUE

EXPOSE 25565
EXPOSE 25575

VOLUME [ "/home/user/minecraft-data:/data" ]
