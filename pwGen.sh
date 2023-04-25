#!/bin/bash

chars="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!#$%&*+,-./:;?@[\]^_{|}"
length=${#chars}

while true; do
    if [[ -z $1 ]]; then
        read -p "Choose password lenght: " n
    else
        n=$1
    fi

    if echo "$n" | grep -q "^[0-9]*$"; then
        break
    fi
    echo "Invalid character"
    set -- ""
done

for (( i=1; i<=$n; i++ ))
do
    index=$((RANDOM % $length))
    random_char=${chars:index:1}

    password+=$random_char
done

echo $password
