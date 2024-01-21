FROM ubuntu

WORKDIR /app

RUN apt update && apt upgrade -y && apt autoremove -y && apt install python3 python3-pip -y && apt install git nano wget -y

COPY . .

ENV PING_IP="1270.0.0.1"

ENV TOKEN="token"

ENV PASSWORD_WEB="pass"

RUN chmod +x run.sh

ENTRYPOINT ./run.sh
