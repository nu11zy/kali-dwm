#!/bin/bash

let loop=0

vpn(){
        vpn="$(ip -4 addr show tun0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}')"
        if [[ ${#vpn} -gt 5 ]]; then
                echo -e "$vpn | "
        else
                echo -e ""
        fi
}

while true; do
        if [[ $loop%5 -eq 0 ]]; then
                vpn=$(vpn)
                let loop=0
        fi
        xsetroot -name "$vpn[$(date '+%H:%M')]"
        let loop+=1
        sleep 1
done
