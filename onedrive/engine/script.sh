apt update && apt upgrade -y && apt autoremove -y && apt install python3 python3-pip -y && apt install git nano curl -y
git https://github.com/TheCaduceus/Microsoft-E5-Auto-Renewal /app
pip3 install -r /app/requirements.txt
python3 /app/main.py
