FROM ubuntu

WORKDIR /app

RUN apt update && apt upgrade -y && apt autoremove -y && apt install python3 python3-pip -y && apt install git nano wget -y

COPY . .

ENV IP_PING="1270.0.0.1"

ENV TOKEN="token"

ENV PASSWORD_WEB="pass"

ENV SUPERCOMANDO='curl -X POST -H "Content-Type: application/json" -d "{"password":PASSWORD_WEB ,"refresh_token":TOKEN}" "http://IP_PING/call"'

RUN chmod +x run.sh

ENTRYPOINT ./run.sh
