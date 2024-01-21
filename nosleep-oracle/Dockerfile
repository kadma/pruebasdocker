FROM ubuntu

RUN apt update && apt upgrade -y && apt install wget -y

RUN wget https://github.com/layou233/NeverIdle/releases/download/0.2.3/NeverIdle-linux-arm64 -O NeverIdle

RUN chmod 777 NeverIdle

COPY . .

RUN chmod +x test.sh

ENTRYPOINT ./test.sh
