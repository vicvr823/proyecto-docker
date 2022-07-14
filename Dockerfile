# Esta es mi primera imagen de Docker

# Imagen base
FROM ubuntu

# Ejecutar comandos (construccion)
RUN apt-get update
RUN apt-get install python3 python3-dev -y
RUN apt-get install postgresql-client -y
RUN mkdir /app

# Definir directorio de trabajo
WORKDIR /app

# Variables de entorno
ENV MSG='Saludos a todos desde compose'

# Copia archivos a mi contenedor
ADD . .
#COPY

# Ejecuta comandos  (correr)
CMD python3 -m http.server 5000

# Exponer puertos
EXPOSE 5000