#!/bin/bash
# Programa  para el ejemplo de como capturar info del usuario y validar usando expresiones regulares
# Autor: Jaiden Meiden @jaidenmeiden

identRegex='^[0-9]{10}$'
paisRegex='EC|CO|US$'
feNaRegex='^19|20[0-9]{2}[1-12][1-31]$'
validador=i

clear
echo"Expresiones Regulares"
while [ $validador == i ]
do
    read -p "Ingresar Cedula: (valor numerico entre 10 digitos)..." ident
    clear
    if [[ $ident =~ $identRegex ]]; then
        echo"Muy Bien, Cedula Validada!! "
        validador=v
        read -p "Presione Enter para continuar..."
        clear
    else
        echo"Cedula Invalida... Intente nuevamente"
        validador=i
    fi
done
validador=i
while [ $validador == i ]
do
    read -p "Ingresar Pais [EC|CO|US]:  indique uno de los 3..." pais
    clear
    if [[ $pais =~ $paisRegex ]]; then
        echo"Muy bien, Pais Validado!"
        validador=v
        read -p "Presiones Enter para continuar..."
        clear
    else
        echo"Pais Invalido... Intente nuevamente"
        validador=i
    fi
done
validador=i
while [ $validador == i ]
do
    read -p "Ingresar Cumpleaños: yyyyMMdd..." cumple
    clear
    if [[ $cumple =~ $feNaRegex ]]; then
        echo"Muy bien, Fecha Validada! "
        validador=v
        read -p "Presione Enter para continuar..."
        clear
    else
        echo"Fecha Invalida... Intente nuevamente..."
        validador=i
    fi
done
echo"Datos Ingresador:"
echo"Cedula: $ident"
echo"País: $pais"
echo"Fecha de Nacimiento: $cumple"

read -p "Presione Enter para salir..."
clear
