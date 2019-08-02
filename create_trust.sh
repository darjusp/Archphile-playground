#!/bin/bash
arr1=($(ls -ts /var/lib/bluetooth/ | grep -ioE '([a-z0-9]{2}:){5}..'))
arr=($(ls -ts /var/lib/bluetooth/${arr1[0]} | grep -ioE '([a-z0-9]{2}:){5}..'))

rm temp_trust.txt || true

for ((i=0; i<${#arr[@]}; i++)); do
#do something to each element of array
if ! grep -q ${arr[$i]} trusted_devices.txt; then
#echo "Trust does not exist!!"
echo "${arr[$i]}"
echo "${arr[$i]}" >> temp_trust.txt
fi
done

expect second.exp