# !/bin/bash
# Validar entradas del usuario según expresiones regulares
# Autor: Jaiden Meiden @jaidenmeiden

regex_identificacion='^([0-9]){10}$'
regex_pais='^(EC|CO|US)$'
regex_fecha='^([1-2][0-9][0-9][0-9])(01|02|03|04|05|06|07|08|09|10|11|12)([0-3][0-9])$'

echo'Expresiones regulares'
read -p "Introduzca identificación:" identificacion
read -p "Introduzca inicialies de pais [EC, CO, US]:" pais
read -p "Introduzca fecha de nacimiento:" fecha

# Validación identificación
if [[ $identificacion =~ $regex_identificacion ]]; then
    echo"Identificación $identificacion válida"
else
    echo"Identificación $identificacion inválida"
fi

# Validación país
if [[ $pais =~ $regex_pais ]]; then
    echo"País $pais válido"
else
    echo"País $pais inválido"
fi

# Validación fecha de nacimiento
if [[ $fecha =~ $regex_fecha ]]; then
    echo"Fecha $fecha válida"
else
    echo"Fecha $fecha inválida"
fi
