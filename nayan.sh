#!/bin/bash
echo "Nayan"

name="$1"
if [ -z "$name" ]; then
    echo "No name provided."
else
    echo "Hello, $name!"
fi

a=("Hello World" "Hello World2" "Hello World3")
if [ $? -eq 0 ]; then
    echo "Last command executed successfully."
    echo "${#a[@]}"
else
    echo "Last command failed."
fi

for i in "${a[@]}"; do
    echo "$i"
done

if [ -f Dockerfile ]; then
    echo "Dockerfile exists."
    while read -r line; do
        echo "$line"
    done < Dockerfile
else
    echo "Dockerfile does not exist."
fi

if [ "${#a[@]}" -gt 2 ]; then
    echo "Array has more than 2 elements."
else
    echo "Array has 2 or fewer elements."
fi

#while true; do
#    echo "This will run indefinitely. Press Ctrl+C to stop."
#    sleep 5
#done

status=$(ufw status | grep -i "Status")
echo "$status"
if [[ $status == *"active"* ]]; then
    echo "UFW is active."
else
    echo "UFW is inactive."
fi