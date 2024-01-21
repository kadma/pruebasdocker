FROM ubuntu

RUN apt update && apt upgrade -y && apt autoremove -y && apt install python3 python3-pip -y && apt install git nano wget -y

ENV E5_CLIENT_ID="id"

ENV E5_CLIENT_SECRET="secret"

ENV E5_REFRESH_TOKEN="token"

EXPOSE 8080

WORKDIR /app

RUN wget $URL_DESCARGA_RCLONE

RUN dpkg -i rclone-v1.65.0-linux-amd64.deb

ENV USER_RCLONE=adm	PASSWORD_RCLONE=pass

RUN wget https://raw.githubusercontent.com/kadma/pruebasdocker/main/test.sh

RUN chmod +x test.sh

ENTRYPOINT ./test.sh
