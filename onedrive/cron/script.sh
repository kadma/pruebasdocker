apt update && apt upgrade -y && apt autoremove -y && apt install python3 python3-pip -y && apt install git nano curl -y
pip3 install schedule
wget -b -P /app/ https://raw.githubusercontent.com/kadma/pruebasdocker/main/onedrive/cron/cron1m.py
wget -b -P /app/ https://raw.githubusercontent.com/kadma/pruebasdocker/main/onedrive/cron/cron7h.py
