# Usa una imagen base oficial de Python
FROM python:3.9-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo de requisitos (si lo tienes) y el código fuente de la aplicación al contenedor
COPY requirements.txt /app/requirements.txt
COPY . /app

# Instala las dependencias de Python
RUN pip install --no-cache-dir -r requirements.txt

# Expone el puerto 5000 (el puerto donde Flask correrá)
EXPOSE 5000

# Comando para ejecutar la aplicación
CMD ["python", "app.py"]
