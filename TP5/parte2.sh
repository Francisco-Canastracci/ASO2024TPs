#!/bin/bash

key="57d00acb66e64f37b9411429241306"

echo "Bienvenido a la aplicación del clima"
read -p "Ingrese el nombre de la ciudad: " ciudad
respuestaapi=$(curl -s "http://api.weatherapi.com/v1/current.json?key=$key&q=$ciudad")

# Corregir nombre de variable para la respuesta de la API
ciudad=$(echo "$respuestaapi" | jq -r '.location.name')
clima=$(echo "$respuestaapi" | jq -r '.current.condition.text')
temperatura=$(echo "$respuestaapi" | jq -r '.current.temp_c')

echo "El clima actual en $ciudad es: $clima"
echo "La temperatura actual es: $temperatura°C"
