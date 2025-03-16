import requests
import schedule
import time
import logging
import os

# Configuración del logging
logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(levelname)s - %(message)s')

# Leer variables de entorno
IP = os.getenv("IP", "127.0.0.0:8080")  # IP y puerto por defecto
PASSWORD = os.getenv("PASSWORD", "pass")  # Password por defecto
REFRESH_TOKEN = os.getenv("REFRESH_TOKEN", "tokenit")  # Token por defecto

# Construir la URL correctamente
URL = f"http://{IP}/call"  # Incluye el protocolo y la ruta
HEADERS = {"Content-Type": "application/json"}
DATA = {"password": PASSWORD, "refresh_token": REFRESH_TOKEN}

def perform_curl():
    try:
        # Realiza la solicitud POST
        response = requests.post(URL, headers=HEADERS, json=DATA)
        response.raise_for_status()  # Lanza una excepción si la respuesta no es exitosa
        logging.info(f"Success: {response.status_code} - {response.text[:100]}...")  # Muestra solo los primeros 100 caracteres
    except requests.exceptions.RequestException as e:
        logging.error(f"Error: {e}")

def initial_test():
    logging.info("Running initial test...")
    perform_curl()

def main():
    # Ejecuta la prueba inicial
    initial_test()

    # Programa la ejecución cada minuto
    schedule.every(1).minutes.do(perform_curl)

    # Bucle para mantener el script en ejecución
    while True:
        schedule.run_pending()
        time.sleep(1)

if __name__ == "__main__":
    main()