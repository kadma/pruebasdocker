import os
import schedule
import time
import subprocess

def ejecutar_comando():
    comando = os.environ.get('SUPERCOMANDO', default=None)

    if comando is not None:
        subprocess.run(comando, shell=True)
    else:
        print("La variable de entorno no tiene un valor definido.")

schedule.every(7).hours.do(ejecutar_comando)

while True:
    # Ejecuta las tareas pendientes
    schedule.run_pending()
    
    # Espera 1 segundo antes de volver a verificar
    time.sleep(1)
