#!/bin/bash

# shell scipt to prepend i3status with more stuff

i3status | while :
do
        read line
        LG=$(test $(xset -q | grep -A 0 'LED' | cut -c63) -eq '0' && echo 'fr' || echo 'ir')
        echo "LG: $LG | $line" || exit 1
done

