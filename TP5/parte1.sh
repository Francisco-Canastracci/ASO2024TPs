#!/bin/bash

numeroaleatorio=$((RANDOM % 100 + 1))

echo "Elija un numero del 1 al 100"

while true; do
    read -p "Escriba su numero: " numeroingresado
    if ((numeroingresado <= 100 && numeroingresado >= 1)); then
        if ((numeroaleatorio == numeroingresado)); then
            echo "¡Ha acertado!"
            break
        elif ((numeroingresado < numeroaleatorio)); then
            echo "El numero es mayor"
        else
            echo "El numero es menor"
        fi
    else
        echo "Intente un numero valido"
    fi
done
