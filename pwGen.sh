#!/bin/bash

chars="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!#$%&*+,-./:;?@[\]^_{|}"
length=${#chars}

while true; do
    echo "Choose password lenght: "
    read n

    if echo "$n" | grep -q "^[0-9]*$"; then
        break
    fi
    echo "Invalid character" 
done

for (( i=1; i<=$n; i++ ))
do
    index=$((RANDOM % $length))
    random_char=${chars:index:1}

    password+=$random_char
done

echo $password