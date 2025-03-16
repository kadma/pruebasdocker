# Usar una imagen base más ligera y específica
FROM python:3.9-slim

# Establecer el directorio de trabajo
WORKDIR /app

# Instalar dependencias del sistema y limpiar caché en un solo RUN
RUN apt-get update && \
    apt-get install -y --no-install-recommends git wget && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Clonar el repositorio
RUN git clone https://github.com/TheCaduceus/Microsoft-E5-Auto-Renewal /app

# Instalar dependencias de Python
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el resto de los archivos
COPY . .

# Exponer el puerto
EXPOSE 8080

# Establecer el comando de entrada
CMD ["python", "main.py"]