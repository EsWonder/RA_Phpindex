# Usa una imagen base de PHP
FROM php:8.0-cli

# Crea un directorio de trabajo
WORKDIR /app

# Copia el archivo PHP en el contenedor
COPY index.php .

# Exponer el puerto que usará el servidor
EXPOSE 8000

# Ejecuta el servidor PHP embebido en el puerto 8000
CMD ["php", "-S", "0.0.0.0:8000", "index.php"]
