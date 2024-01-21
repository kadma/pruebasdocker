FROM ubuntu

WORKDIR /app

RUN apt update && apt upgrade -y && apt autoremove -y && apt install python3 python3-pip -y && apt install git nano wget -y

RUN git clone https://github.com/TheCaduceus/Microsoft-E5-Auto-Renewal /app

ENV E5_CLIENT_ID="id"

ENV E5_CLIENT_SECRET="secret"

ENV E5_REFRESH_TOKEN="token"

EXPOSE 8080

RUN chmod +x test.sh

ENTRYPOINT ./test.sh
