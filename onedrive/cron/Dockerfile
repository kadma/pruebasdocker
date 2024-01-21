FROM ubuntu

WORKDIR /app

RUN apt update && apt upgrade -y && apt autoremove -y && apt install python3 python3-pip -y && apt install git nano wget curl -y

RUN pip install schedule

COPY . .

ENV IP_PING="http://127.0.0.1:8080/call"

ENV TOKEN="token"

ENV PASSWORD_WEB="pass"

ENV SUPERCOMANDO='curl -X POST -H "Content-Type: application/json" -d ''{"password":$PASSWORD_WEB ,"refresh_token":$TOKEN}'' "$IP_PING"'

RUN chmod +x run.sh

ENTRYPOINT ./run.sh
